import 'dart:async';
import 'dart:io';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/graphql/http_client.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_media_attachment.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/screens/permission_sheet.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_selector/file_selector.dart' as file_selector;
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:isar/isar.dart';
import 'package:mime/mime.dart';
import 'package:open_filex/open_filex.dart' as open_file;

import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../utils/utils.dart';
export 'package:file_picker/file_picker.dart' show FileType;

enum ArreFileCategory {
  insertables,
  micRecording,
  bgMusic,
  tmp,
  csMediaAttachment,
}

enum AFileDirectory {
  ApplicationSupportDirectory,
  ApplicationDocumentsDirectory
}

mixin AFileFields {
  @ignore
  String? get relativePath;

  @ignore
  AFileDirectory? get fileDirectory;

  @ignore
  AFile? get aFile {
    if (relativePath != null && fileDirectory != null) {
      return AFile(relativePath: relativePath!, fileDirectory: fileDirectory!);
    }
    return null;
  }
}

class DownloadTask extends Equatable {
  final String url;
  final String toFilePath;
  final Map<String, String>? headers;

  @override
  bool? get stringify => true;

  DownloadTask({
    required this.url,
    required this.toFilePath,
    this.headers,
  });

  @override
  List<Object?> get props => [url, toFilePath, headers.toString()];
}

class AFile with AFileFields {
  final String relativePath;

  final AFileDirectory fileDirectory;

  AFile({
    required this.relativePath,
    required this.fileDirectory,
  });

  Future<File> get absolute async => File(await absolutePath);

  Future<File> createFile() async {
    return File(await absolutePath).create(recursive: true);
  }

  Future<String> get absolutePath {
    return ArreFiles.instance.getAbsolutePath(this);
  }
}

class ArreFiles {
  late Uuid uuid;
  late Future<Directory> _applicationDocumentDir;
  late Future<Directory> _applicationSupportDir;
  Map<DownloadTask, Completer<String>> _downloadingTasks = {};

  static ArreFiles? _instance;

  Future<Directory> get applicationSupportDir => _applicationSupportDir;

  Future<Directory> get applicationDocumentsDir => _applicationDocumentDir;

  static ArreFiles get instance {
    _instance ??= ArreFiles._();
    return _instance!;
  }

  ArreFiles._() {
    uuid = Uuid();
    _applicationDocumentDir = getApplicationDocumentsDirectory();
    _applicationSupportDir = getApplicationSupportDirectory();
  }

  ///
  static String getFilePathOrUri(Uri uri) {
    if (uri.isScheme("file")) {
      return uri.toFilePath();
    }
    return uri.toString();
  }

  Future<Directory> getDownloadDir() async {
    Directory requiredDir;
    Directory? downloadDir =
        await getDownloadsDirectory().catchError((err) => null);
    if (await downloadDir?.exists() ?? false) {
      requiredDir = downloadDir!;
    } else {
      requiredDir = await _applicationDocumentDir;
    }
    return requiredDir;
  }

  Future<File> _getUniqueFile(
    Directory directory,
    Post voicepod,
    String fileName,
    extension,
  ) async {
    File file = File([
      directory.path,
      '$fileName.$extension',
    ].join(Platform.pathSeparator));
    if (await file.exists()) {
      fileName = '${fileName}_${voicepod.postId}.$extension';
      file = File([directory.path, fileName].join(Platform.pathSeparator));
    }

    return file;
  }

  Future<File> downloadVoicepod2({
    required Post voicepod,
    void Function(double progress)? progressCallback,
  }) async {
    try {
      var downloadDir = await getDownloadDir();
      final signedUrl =
          await ApiService.instance.getMediaSignedUrl(voicepod.audioMediaId);

      final extension = Uri.parse(signedUrl).path.split(".").lastOrNull;
      final finalExtension =
          extension?.isNotEmpty ?? false ? extension! : "m4a";

      String fileName = 'Arré Voice ${voicepod.title}';

      File saveToFile =
          await _getUniqueFile(downloadDir, voicepod, fileName, finalExtension);

      await AHttpClient.instance.download(
        uri: Uri.parse(signedUrl),
        saveToFile: saveToFile,
        progressCallback: (count, total) =>
            progressCallback?.call(count / total),
      );
      print("SAVED TO ${saveToFile.uri}");
      return saveToFile;
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    }
  }

  Future<String?> downloadVoicepod({
    required String audioUrl,
    required Function(double) onProgressUpdate,
    required Completer<void> completer,
  }) async {
    String timeStamp = Utils.getFormattedTimeStamp();
    String modifiedFileName = 'ARREVOICE-$timeStamp.mp3';
    String downloadsPath;

    if (Platform.isIOS) {
      downloadsPath = (await _applicationDocumentDir).path;
    } else {
      Directory directory = Directory('/storage/emulated/0/Download');
      if (!await directory.exists()) {
        directory = await _applicationSupportDir;
      }
      downloadsPath = directory.path;
    }

    String url = AMediaService.instance.getMediaUrl(audioUrl).toString();

    if (downloadsPath.isNotEmpty) {
      final HttpClient httpClient = HttpClient();
      int totalBytes = 0;
      try {
        final HttpClientRequest request =
            await httpClient.getUrl(Uri.parse(url));
        request.headers.set('Authorization', arrePref.authToken!);
        final HttpClientResponse response = await request.close();

        if (response.statusCode == HttpStatus.ok) {
          totalBytes = response.contentLength;
        }
      } catch (e) {}

      if (totalBytes > 0) {
        for (int i = 0; i < totalBytes; i += 10000) {
          if (completer.isCompleted) {
            return null;
          }
          double progress = i / totalBytes;
          onProgressUpdate(progress);
          await Future.delayed(Duration(milliseconds: 100));
        }

        if (!completer.isCompleted) {
          DownloadTask task = DownloadTask(
            url: url,
            toFilePath: '$downloadsPath/$modifiedFileName',
            headers: {'Authorization': arrePref.authToken!},
          );

          String downloadedFilePath = await ArreFiles.instance.download(task);
          return downloadedFilePath;
        }
      }
    }
    return null;
  }

  static Future<AFile?> pickAudioFileV2(
      AFile Function(String filePath) aFileBuilder) async {
    try {
      final typeGroup = file_selector.XTypeGroup(
        label: 'Audio file',
        extensions: <String>["aac", "midi", "mp3", "ogg", "wav", "m4a", "opus"],
        mimeTypes: ['audio/*'],
        uniformTypeIdentifiers: [
          "public.mp3",
          "com.microsoft.waveform-audio",
          "public.m4a",
          "public.opus",
          "public.audio",
          "public.mpeg-4-audio",
          "public.ulaw-audio",
          "public.aifc-audio",
          "public.aiff-audio",
          "com.apple.coreaudio-format",
          "com.microsoft.waveform-audio",
          "com.digidesign.sd2-audio",
          "com.real.realaudio"
        ],
      );
      final file =
          await file_selector.openFile(acceptedTypeGroups: [typeGroup]);
      if (file != null) {
        final aFile = aFileBuilder(file.path);
        await aFile.createFile();
        await file.saveTo(await aFile.absolutePath);
        return aFile;
      }
    } catch (err, st) {
      Utils.reportError(err, st);
    }
    return null;
  }

  static Future<File?> pickMedia([FileType fileType = FileType.media]) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: fileType,
        allowMultiple: false,
        allowCompression: true,
      );
      if (result?.isSinglePick ?? false) {
        //If the file size is greater than 100MB
        if (result!.files.first.size > 100000000) {
          throw ArreException("Please select media within 100MB");
        }
        return File(result.files.first.path!);
      }
      return null;
    } on PlatformException catch (err) {
      if (err.code != "read_external_storage_denied") rethrow;
      final permission =
          Platform.isAndroid ? Permission.storage : Permission.mediaLibrary;
      final hasPermission = await handlePermission(permission, request: false);
      if (!hasPermission.item1) {
        throw ArreException(
            "App needs storage permission to add photo or video");
      }
      return null;
    }
  }

  static Future<List<File>?> pickMultipleMedia(
      [FileType fileType = FileType.media]) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: fileType,
        allowMultiple: true,
        allowCompression: true,
      );
      if (result?.isSinglePick ?? false) {
        return result!.files.map((e) => File(e.path!)).toList();
      }
      return null;
    } on PlatformException catch (err) {
      if (err.code != "read_external_storage_denied") rethrow;
      final permission =
          Platform.isAndroid ? Permission.storage : Permission.mediaLibrary;
      final hasPermission = await handlePermission(permission, request: false);
      if (!hasPermission.item1) {
        throw ArreException(
            "App needs storage permission to add photo or video");
      }
      return null;
    }
  }

  ///Use this to generate unique fileName [file extension is not added]
  String uniqueId() => uuid.v1();

  Future<String> getSearchDbPathV2() async {
    String dirPath = (await getApplicationSupportDirectory()).path;
    dirPath = [dirPath, "arre_search_db_v2"].join(Platform.pathSeparator);
    if (!await Directory(dirPath).exists()) {
      await Directory(dirPath).create(recursive: true);
    }
    return dirPath;
  }

  Future<String> getCSDbPathV2() async {
    String dirPath = (await getApplicationSupportDirectory()).path;
    dirPath = [dirPath, "arre_cs_db_v2"].join(Platform.pathSeparator);
    if (!await Directory(dirPath).exists()) {
      await Directory(dirPath).create(recursive: true);
    }
    return dirPath;
  }

  Future<String> getLogsDbPathV2() async {
    String dirPath = (await getApplicationSupportDirectory()).path;
    dirPath = [dirPath, "arre_logs_db_v2"].join(Platform.pathSeparator);
    if (!await Directory(dirPath).exists()) {
      await Directory(dirPath).create(recursive: true);
    }
    return dirPath;
  }

  Future<String> getNetworkLogsDbPathV2() async {
    String dirPath = (await getApplicationSupportDirectory()).path;
    dirPath = [dirPath, "arre_network_logs_db_v2"].join(Platform.pathSeparator);
    if (!await Directory(dirPath).exists()) {
      await Directory(dirPath).create(recursive: true);
    }
    return dirPath;
  }

  String randomFileName(String extension) {
    return "${uniqueId()}.$extension";
  }

  ///[fileName] - Eg. Hehe.mp3
  AFile generateInsertableFile(String fileName) {
    final relativePath = ["Insertables", fileName].join(Platform.pathSeparator);
    return AFile(
      relativePath: relativePath,
      fileDirectory: AFileDirectory.ApplicationSupportDirectory,
    );
  }

  AFile generateBgMusicFile(String fileName) {
    final relativePath =
        ["BackgroundMusic", fileName].join(Platform.pathSeparator);
    return AFile(
      relativePath: relativePath,
      fileDirectory: AFileDirectory.ApplicationSupportDirectory,
    );
  }

  AFile generateMicRecordFile(String csSessionId, String extension) {
    final relativePath = [
      "VoicepodDrafts",
      csSessionId,
      "${uniqueId()}.$extension"
    ].join(Platform.pathSeparator);

    return AFile(
      relativePath: relativePath,
      fileDirectory: AFileDirectory.ApplicationSupportDirectory,
    );
  }

  AFile generateVoiceMessageFile(String chatId, String extension) {
    final relativePath = ["VoiceMessages", "${uniqueId()}.$extension"]
        .join(Platform.pathSeparator);

    return AFile(
      relativePath: relativePath,
      fileDirectory: AFileDirectory.ApplicationSupportDirectory,
    );
  }

  AFile generateCSImportFile(String csSessionId, String filePath) {
    final relativePath = [
      "VoicepodDrafts",
      csSessionId,
      "${uniqueId()}.${getFileName(filePath)}"
    ].join(Platform.pathSeparator);

    return AFile(
      relativePath: relativePath,
      fileDirectory: AFileDirectory.ApplicationSupportDirectory,
    );
  }

  AFile generatePodFile(String fileName) {
    return AFile(
      relativePath: ["Pod", fileName].join(Platform.pathSeparator),
      fileDirectory: AFileDirectory.ApplicationDocumentsDirectory,
    );
  }

  String generateCSMediaThumbnailRelativePath({
    required String filePathOrName,
    required String sessionId,
  }) {
    final fileName = filePathOrName.split(Platform.pathSeparator).last;
    return ["VoicepodDrafts", sessionId, fileName].join(Platform.pathSeparator);
  }

  CSMediaAttachment generateCSMediaAttachment(
    String sessionId,
    String tmpFilePath,
  ) {
    final mimeType = lookupMimeType(
      tmpFilePath,
      headerBytes: File(tmpFilePath).readAsBytesSync(),
    );
    if (mimeType == null) {
      throw CSFormValidationException(
          "We're sorry, the app doesn't support this media format yet. Please try with another image/video");
    }

    //Media file
    final mediaFilename = tmpFilePath.split(Platform.pathSeparator).last;
    final mediaRelativePath = ["VoicepodDrafts", sessionId, mediaFilename]
        .join(Platform.pathSeparator);

    //Media thumbnail file
    final thumbnailRelativePath = generateCSMediaThumbnailRelativePath(
      filePathOrName: "${ArreFiles.instance.uniqueId()}.jpeg",
      sessionId: sessionId,
    );

    return CSMediaAttachment(
      mediaRelativePath: mediaRelativePath,
      thumbnailRelativePath: thumbnailRelativePath,
      fileDirectory: AFileDirectory.ApplicationSupportDirectory,
      mimeType: mimeType,
    );
  }

  Future<String> generateTmpFilePath([String? fileExtension]) async {
    var path = (await getTemporaryDirectory()).path;
    path = [path, uniqueId()].join(Platform.pathSeparator);
    if (fileExtension != null) path = "$path.$fileExtension";
    return path;
  }

  Future<File> createTmpFile(String fileExtension) async {
    return File(await generateTmpFilePath(fileExtension)).create();
  }

  /// [csSessionId] is required for [ArreFileCategory.micRecording]
  ///
  /// [createFile] creates the file with generated path and [fileName]
  @Deprecated("Use respective methods instead of this")
  Future<String> getArreFilePath({
    required ArreFileCategory fileCategory,
    required String fileName,
    String? csSessionId,
    bool createFile = true,
  }) async {
    assert(() {
      if (fileCategory == ArreFileCategory.micRecording) {
        return csSessionId != null && csSessionId.trim().isNotEmpty;
      }
      return true;
    }(),
        "csSessionId must have a valid value for [ArreFileCategory.micRecording]. Value passed is $csSessionId");
    String path;
    switch (fileCategory) {
      case ArreFileCategory.insertables:
        path = (await _applicationDocumentDir).path;
        path = [path, "Insertables", fileName].join(Platform.pathSeparator);
        break;
      case ArreFileCategory.csMediaAttachment:
        path = (await _applicationDocumentDir).path;
        path = [path, "VoicepodDrafts", csSessionId!, fileName]
            .join(Platform.pathSeparator);
        break;
      case ArreFileCategory.micRecording:
        path = (await _applicationDocumentDir).path;
        path = [path, "VoicepodDrafts", csSessionId!, fileName]
            .join(Platform.pathSeparator);
        break;
      case ArreFileCategory.bgMusic:
        path = (await _applicationDocumentDir).path;
        path = [path, "BackgroundMusic", fileName].join(Platform.pathSeparator);

        break;

      case ArreFileCategory.tmp:
        path = (await getTemporaryDirectory()).path;
        path = [path, fileName].join(Platform.pathSeparator);
        break;
    }
    if (createFile) {
      File(path).createSync(recursive: true);
    }
    return path;
  }

  //retry mechanism is due to issue https://github.com/flutter/flutter/issues/91559
  Future<String> copyFile(
    File file, {
    required String newFilePath,
    bool retry = true,
  }) async {
    try {
      final newFile = Uri.file(newFilePath);
      final copy = await file.absolute.copy(newFile.toFilePath());
      final randomAccessFile = await copy.open();
      await randomAccessFile.flush();
      return copy.path;
    } catch (err, st) {
      if (retry) {
        return copyFile(file, newFilePath: newFilePath, retry: false);
      }
      Utils.reportError(err, st);
      rethrow;
    }
  }

  Future<String> download(DownloadTask task) {
    if (_downloadingTasks.containsKey(task)) {
      return _downloadingTasks[task]!.future;
    }
    final completer = Completer<String>();
    _downloadingTasks[task] = completer;
    () async {
      try {
        final filePath = task.toFilePath;
        final url = task.url;
        final headers = task.headers;
        if ((await File(filePath).exists()) &&
            await File(filePath).length() != 0) {
          completer.complete(filePath);
          return;
        }
        http.Client client = new http.Client();
        File file = File(filePath);
        if (!await file.exists()) {
          await file.create(recursive: true);
        }
        var req = await client.get(Uri.parse(url), headers: headers);
        await file.writeAsBytes(
          req.bodyBytes,
          flush: true,
          mode: FileMode.writeOnly,
        );
        completer.complete(file.path);
      } catch (err, st) {
        completer.completeError(err, st);
      } finally {
        _downloadingTasks.remove(task);
      }
    }();
    return completer.future;
  }

  Future<String> downloadAndSaveImageFromUrl(String imageUrl) async {
    try {
      final directory = await getTemporaryDirectory();
      final imagePath = '${directory.path}/tempFile.png';
      final task = DownloadTask(
        url: imageUrl,
        toFilePath: imagePath,
        // headers: {'Authorization': arrePref.authToken!},
      );
      final downloadedFilePath = await download(task);
      return downloadedFilePath;
    } catch (error) {
      throw Exception('Failed to download image: $error');
    }
  }

  String getFileExtension(File file) {
    return file.path.split('.').last;
  }

  String getFileName(String filePath) {
    return filePath.split(Platform.pathSeparator).last;
  }

  Future<void> openFile(String path) {
    return open_file.OpenFilex.open(path);
  }

  Future<void> deleteFile(String filePath) async {
    try {
      await File(filePath).delete(recursive: true);
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  Future<String> getAbsolutePath(AFile aFile) async {
    String basePath;
    switch (aFile.fileDirectory) {
      case AFileDirectory.ApplicationSupportDirectory:
        basePath = (await _applicationSupportDir).path;
        break;
      case AFileDirectory.ApplicationDocumentsDirectory:
        basePath = (await _applicationDocumentDir).path;
        break;
    }
    return [basePath, aFile.relativePath].join(Platform.pathSeparator);
  }

  Future<File> getAssetFile(String arreAsset) async {
    String filePath = [(await _applicationSupportDir).path, arreAsset]
        .join(Platform.pathSeparator);
    final file = await File(filePath).create(recursive: true);
    if (await file.length() > 0) {
      return file;
    }
    final bytes = await rootBundle.load(arreAsset);
    await file.writeAsBytes(
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes));
    return file;
  }

  Future<void> deleteDraftSession(String draftFileDir) async {
    try {
      final supportDir = [
        (await _applicationSupportDir).path,
        "VoicepodDrafts",
        draftFileDir
      ].join(Platform.pathSeparator);
      final documentDir = [
        (await _applicationDocumentDir).path,
        "VoicepodDrafts",
        draftFileDir
      ].join(Platform.pathSeparator);
      await Future.wait(
        [
          Directory(supportDir).delete(recursive: true),
          Directory(documentDir).delete(recursive: true),
        ],
        eagerError: false,
      );
    } catch (err) {
      //Ignore error
    }
  }
}
