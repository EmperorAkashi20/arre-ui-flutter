import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit_config.dart';

import '../../utils/utils.dart';
import '../arre_files_provider.dart';
import 'cs_activity_provider.dart' show kCSRecordingDuration;

const _LOG = "ARRE_FFMPEG_PROVIDER";

class FFmpegProvider {
  Map<String, String> _executionCaches = {};
  static FFmpegProvider instance = FFmpegProvider._();

  bool _isInitialized = false;

  FFmpegProvider._();

  Future<void> _init() async {
    if (_isInitialized) return;
    await FFmpegKitConfig.init();
    _isInitialized = true;
  }

  // Future<String> getOutputPath({String extension = "m4a"}) async {
  //   String dir = (await getApplicationDocumentsDirectory()).path;
  //   return "$dir/${DateTime.now().millisecondsSinceEpoch}.$extension";
  // }

  Future<void> _executeAsync(String command) async {
    final completer = Completer<void>();
    List<String> logs2 = [];
    try {
      await _init();
      log("EXECUTING COMMAND => $command", name: _LOG);
      await FFmpegKit.executeAsync(command, (session) async {
        try {
          final returnCode = (await session.getReturnCode())!;
          if (returnCode.isValueSuccess()) {
            completer.complete();
          } else if (returnCode.isValueCancel()) {
            completer.completeError(Exception("Execution Cancelled"));
          } else {
            final logs = await session
                .getAllLogs(2)
                .then((value) => value.map((e) => e.getMessage()))
                .catchError((err) => logs2);

            completer.completeError(FFmpegException(logs));
            log("FFMPEG Error ",
                error: await session.getLogsAsString(), name: _LOG);
          }
        } catch (err, st) {
          completer.completeError(err);
          Utils.reportError(err, st);
        }
      }, (ffLog) {
        logs2.add("${ffLog.getLevel()}: ${ffLog.getMessage()}");
        log("FFmpeg log ${ffLog.getMessage()}", name: _LOG);
      });
    } catch (err, st) {
      completer.completeError(err);
      Utils.reportError(err, st);
    }
    return completer.future;
  }

  ///Creates a video file combining the audio and image files
  Future<String> mixImageAndAudio({
    required String audioUri,
    required String imagePath,
  }) async {
    final outputPath = await ArreFiles.instance
        .generateTmpFilePath(Platform.isIOS ? "mov" : "mp4");
    final command =
        " -i \"$audioUri\" -loop 1 -framerate 5 -i \"$imagePath\"  -shortest \"$outputPath\"";
    await _executeAsync(command);
    log("COMMAND EXECUTION COMPLETED with Success => $outputPath", name: _LOG);
    return outputPath;
  }

  //Reference https://stackoverflow.com/questions/4425413/how-to-extract-the-1st-frame-and-restore-as-an-image-with-ffmpeg
// command = ffmpeg -i /Users/shashi/Downloads/shashi-driver-DL.jpg  -vf "select=eq(n\,0)" -q:v 3 output_image.jpg
  Future<String> getThumbnail4mMedia(
    String mediaPath,
    String thumbnailPath,
  ) async {
    // if (!ArreFiles.instance.isVideo(mediaPath)) {
    //   return mediaPath;
    // }

    final command =
        "-i \"$mediaPath\" -vf \"thumbnail,scale=60:60\" -y -frames:v 1 \"$thumbnailPath\"";
    await _executeAsync(command);
    log("COMMAND EXECUTION COMPLETED with Success => $thumbnailPath",
        name: _LOG);
    return thumbnailPath;
  }

  Future<String> applyEffects({
    String? voiceEffectCommand,
    required List<Uri> inputFiles,
    Uri? bgFile,
    double? bgVolume,
  }) async {
    if (inputFiles.isEmpty) {
      throw ArreException.key(AExceptionKey.NO_INPUT_FOR_FFMPEG);
    }
    try {
      List<String> inputUriPaths =
          inputFiles.map(ArreFiles.getFilePathOrUri).toList();
      String? bgUriPath;
      if (bgFile != null) {
        bgUriPath = ArreFiles.getFilePathOrUri(bgFile);
      }

      final commandBuilder = StringBuffer("");
      List<String> filterComplexCommands = [];
      String nextInput = "[0:a]";

      //input files
      commandBuilder.writeAll(inputUriPaths.map((e) => "-i \"$e\""), " ");
      if (bgUriPath != null) {
        commandBuilder.write(" -i \"$bgUriPath\" ");
      }

      final concatCommandBuilder = StringBuffer("");
      //concatenate
      for (int i = 0; i < inputUriPaths.length; i++) {
        concatCommandBuilder.write("[$i:a]");
      }
      concatCommandBuilder
          .write(" concat=n=${inputUriPaths.length}:v=0:a=1 [x]");
      filterComplexCommands.add(concatCommandBuilder.toString());
      nextInput = "[x]";

      if (voiceEffectCommand != null) {
        //Applying Voice effects
        filterComplexCommands.add(" $nextInput $voiceEffectCommand [y]");
        nextInput = "[y]";
      }

      if (bgUriPath != null) {
        //Applying bg effect
        final bgInputIndex = inputUriPaths.length;
        bgVolume ??= 1.0;
        String bgEffectCommandBuilder =
            "[$bgInputIndex:a] volume=$bgVolume [bg]; $nextInput[bg] amix=duration=first [z]";
        filterComplexCommands.add(bgEffectCommandBuilder);
        nextInput = "[z]";
      }

      if (filterComplexCommands.isNotEmpty) {
        commandBuilder.write(" -filter_complex \"");
        commandBuilder.writeAll(filterComplexCommands, "; ");
        commandBuilder.write("\"");
      }

      final cacheCommand = commandBuilder.toString();
      final cachedOutputFile = _executionCaches[cacheCommand];
      if (cachedOutputFile != null && await File(cachedOutputFile).exists()) {
        return cachedOutputFile;
      }
      final outputPath = await ArreFiles.instance.generateTmpFilePath("m4a");
      commandBuilder.write(
          " -map \"$nextInput\" -t ${kCSRecordingDuration.inSeconds} \"$outputPath\"");
      await _executeAsync(commandBuilder.toString());
      _executionCaches[cacheCommand] = outputPath;
      return outputPath;
    } catch (err, st) {
      log("Error in FFmpegProvider execute $err", stackTrace: st, name: _LOG);
      Utils.reportError(err, st);
      rethrow;
    }
  }

  Future<void> debugCommand(String command) {
    print("Executing command $command");
    return _executeAsync(command);
  }

//ffmpeg -i cheer.mp3 -i Boo.mp3 -i beatbox.wav -filter_complex "[0:a] [1:a] concat=n=2:v=0:a=1 [y]; [y] atempo=0.7, asetrate=66150, aresample=44100 [x]; [x][2:a] amix=inputs=2:duration=1 [result] " -map "[result]" -c:a mp3 -y output.mp3
// Future<String> applyVoiceEffect({
//   required String voiceEffectCommand,
//   required List<Uri> inputFiles,
// }) async {
//   return applyEffects(
//     inputFiles: inputFiles,
//     voiceEffectCommand: voiceEffectCommand,
//   );
// }
}
