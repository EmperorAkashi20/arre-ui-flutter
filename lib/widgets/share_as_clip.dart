import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_ffmpeg_provider.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../models/src/post.dart';
import '../utils/utils.dart';

class ShareClip extends StatefulWidget {
  final Post feed;
  final String userName;
  final String? profilePictureMediaId;

  ShareClip({
    required this.feed,
    required this.userName,
    required this.profilePictureMediaId,
  });

  @override
  State<ShareClip> createState() => _ShareClipState();
}

class _ShareClipState extends State<ShareClip> {
  GlobalKey _widgetToImageKey = new GlobalKey();
  bool isSharing = false;
  Future<String?>? downloadAudioFuture;

  @override
  void initState() {
    super.initState();
    downloadAudioFuture = downloadPod();
  }

  String get userName => widget.userName;

  Future<String> downloadPod() async {
    final musicFilePath = await ArreFiles.instance.generateTmpFilePath();
    return ArreFiles.instance.download(DownloadTask(
      url: AMediaService.instance
          .getMediaUrl(widget.feed.audioMediaId)
          .toString(),
      headers: {"Authorization": arrePref.authToken!},
      toFilePath: musicFilePath,
    ));
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
    if (isSharing) return;
    try {
      setState(() {
        isSharing = true;
      });
      final output = await generateClipVideo();
      if (!mounted) return;
      final hasShared = await Utils.share(
        entityId: widget.feed.postId,
        entityType: EntityType.voicepod,
        text:
            'Hey, listen to this Voicepod from Arré Voice. ${widget.feed.postUrl}',
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "@${widget.userName}",
                                      style: TextStyle(
                                        fontFamily: "Ubuntu",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        letterSpacing: -0.59,
                                        color: AColors.tealPrimary,
                                      ),
                                    ),
                                    Text(
                                      widget.feed.title.trim(),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: "Ubuntu",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        letterSpacing: -0.59,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
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
                                userName: widget.userName,
                                borderColor: AColors.tealStroke,
                                borderWidth: 3,
                                mediaId: widget.profilePictureMediaId,
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
