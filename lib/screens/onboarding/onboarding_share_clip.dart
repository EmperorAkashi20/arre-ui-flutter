import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_ffmpeg_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShareDraftClip extends ConsumerStatefulWidget {
  final CSDraft draft;

  ShareDraftClip(this.draft);

  @override
  _ShareDraftClipState createState() => _ShareDraftClipState();
}

class _ShareDraftClipState extends ConsumerState<ShareDraftClip> {
  GlobalKey _widgetToImageKey = new GlobalKey();
  bool isSharing = false;
  Future<String?>? downloadAudioFuture;

  @override
  void initState() {
    super.initState();
    downloadAudioFuture = downloadPod();
  }

  static Future<String> getAudioFileWithEffects(CSDraft draft) async {
    final inputFiles =
        await Future.wait(draft.activities.map((e) => e.uri).toList());
    if (inputFiles.isEmpty) {
      throw CSActivityValidationException("Please record for min 5 seconds");
    }
    final outputFilePath = await FFmpegProvider.instance.applyEffects(
      inputFiles: inputFiles,
      voiceEffectCommand: draft.voiceEffect?.ffmpegCommand,
      bgFile: await draft.bgMusicEffect?.uri,
      bgVolume: draft.bgMusicEffect?.volume,
    );
    return outputFilePath;
  }

  Future<String> downloadPod() async {
    final outputFile = await getAudioFileWithEffects(widget.draft);
    return outputFile;
  }

  Future<File> _captureWidget() async {
    if (!mounted) {
      throw ArreException("Share clip sheet popped");
    }
    final paintBoundary = _widgetToImageKey.currentContext!.findRenderObject()!
        as RenderRepaintBoundary;
    ui.Image image = await paintBoundary.toImage(pixelRatio: 3.0);
    ByteData byteData =
        (await image.toByteData(format: ui.ImageByteFormat.png))!;
    var pngBytes = byteData.buffer.asUint8List();
    String filePath = await ArreFiles.instance.generateTmpFilePath("png");
    return await File(filePath).writeAsBytes(pngBytes);
  }

  Future<String> generateClipVideo() async {
    String? podFilePath = await downloadAudioFuture?.catchError((err) => null);
    podFilePath ??= await downloadPod();
    final image = await _captureWidget();
    if (!mounted) {
      throw ArreException("Share clip sheet popped");
    }
    return FFmpegProvider.instance.mixImageAndAudio(
      audioUri: podFilePath,
      imagePath: image.path,
    );
  }

  Future<void> shareAsClip() async {
    arreAnalytics.logEvent(GAEvent.ONB_SHARE_CLIP_CLICK);
    if (isSharing) return;
    try {
      setState(() {
        isSharing = true;
      });
      final output = await generateClipVideo();
      if (!mounted) return;
      final hasShared = await Utils.share(
        entityId: '',
        entityType: EntityType.voicepod,
        text: 'Hey, listen to this Voicepod from Arré Voice.',
        files: [File(output)],
      );
      if (mounted && hasShared) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      Fluttertoast.showToast(msg: Utils.getMessage4mError(e));
    } finally {
      setState(() {
        isSharing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUserId = ref.watch(currentUserProvider).userId;
    final userData = ref.watch(
        userShortDataProvider.select((value) => value.getData(currentUserId!)));
    final width = MediaQuery.sizeOf(context).shortestSide;
    final height = width * 456 / 375;
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Color(0xFF161D23),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: RepaintBoundary(
                key: _widgetToImageKey,
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 111,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(color: Color(0xFF232C36)),
                          child: Row(
                            children: [
                              Image.asset(
                                ArreAssets.ARRE_LOGO_DARK_VERSION_IMG,
                                height: 55.72,
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(widget.draft.title ?? "",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: ATextStyles.user16Regular()),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 345,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(color: Color(0xFF161D23)),
                            Container(
                              child: Image.asset(
                                ArreAssets.SHARE_CLIP_BACKGROUND_IMG,
                                width: 270,
                                height: 224.25,
                              ),
                            ),
                            Container(
                              child: UserAvatarV2(
                                size: 109.08,
                                userName: userData?.username,
                                borderColor: AColors.tealStroke,
                                borderWidth: 3,
                                mediaId: userData?.profilePictureMediaId,
                                showThumbnail: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 44,
                    width: 130,
                    child: FilledFlatButton(
                      onPressed: shareAsClip,
                      child: isSharing
                          ? SizedBox.square(
                              dimension: 24,
                              child: ACommonLoader.dancingBars(size: 24))
                          : Text(
                              "Share",
                              style: ATextStyles.buttons(),
                            ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll(AColors.tealPrimary)),
                    onPressed: Navigator.of(context).pop,
                    child: Text(
                      "Cancel",
                      style: ATextStyles.buttons(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
