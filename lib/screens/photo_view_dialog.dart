import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_close_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

Future<void> showPhotoViewDialog({
  required BuildContext context,
  String? mediaId,
  String? imageUrl,
  Object? heroTag,
}) {
  assert(mediaId != null || imageUrl != null);
  return showDialog(
    context: context,
    useRootNavigator: true,
    barrierColor: null,
    useSafeArea: false,
    builder: (_) {
      if (mediaId != null) {
        return _PhotoViewDialog.mediaId(
          mediaId: mediaId,
          heroTag: heroTag,
        );
      } else if (imageUrl != null) {
        return _PhotoViewDialog.imageUrl(
          imageUrl: imageUrl,
          heroTag: heroTag,
        );
      } else {
        return ArreErrorWidget.empty(message: 'no image');
      }
    },
  );
}

class _PhotoViewDialog extends StatefulWidget with ArreScreen {
  final String? imageUrl;
  final String? mediaId;
  final Object? heroTag;

  const _PhotoViewDialog.imageUrl(
      {required String imageUrl, Key? key, this.heroTag})
      : this.imageUrl = imageUrl,
        this.mediaId = null,
        super(key: key);

  const _PhotoViewDialog.mediaId(
      {required String mediaId, Key? key, this.heroTag})
      : this.imageUrl = null,
        this.mediaId = mediaId,
        super(key: key);

  @override
  State<_PhotoViewDialog> createState() => _PhotoViewDialogState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.PHOTO_VIEW;
}

class _PhotoViewDialogState extends State<_PhotoViewDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _fadeController;

  @override
  void initState() {
    _fadeController = AnimationController(vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _fadeController,
      builder: (context, child) {
        return Material(
          color: Colors.black.withOpacity(1 - _fadeController.value),
          child: child,
        );
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Dismissible(
              key: const ValueKey("dismiss_photo"),
              direction: DismissDirection.vertical,
              behavior: HitTestBehavior.deferToChild,
              dragStartBehavior: DragStartBehavior.start,
              onUpdate: (details) {
                _fadeController.value = details.progress;
              },
              onDismissed: (_) {
                Navigator.of(context).removeRoute(ModalRoute.of(context)!);
              },
              child: PhotoViewGestureDetectorScope(
                axis: Axis.vertical,
                child: PhotoView(
                  heroAttributes: widget.heroTag != null
                      ? PhotoViewHeroAttributes(tag: widget.heroTag!)
                      : null,
                  imageProvider: ArreNetworkImage.imageProvider(
                    imageUrl: widget.imageUrl,
                    mediaId: widget.mediaId,
                  ),
                  tightMode: false,
                  backgroundDecoration: BoxDecoration(color: null),
                  maxScale: 1.2,
                  // scaleStateController: ,
                  minScale: PhotoViewComputedScale.contained,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AnimatedBuilder(
                  animation: _fadeController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: 1 - _fadeController.value,
                      child: child,
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: ACloseButton(),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
