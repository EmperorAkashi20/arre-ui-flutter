import 'dart:ui';

import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:flutter/material.dart';

const ARRE_CARD_ASPECT_RATIO = 154 / 211;
const _borderRadius = BorderRadius.all(Radius.circular(10));

class ArreCard extends StatelessWidget {
  final String title, description;
  final String? imageMediaId;
  final Widget actionButton;
  final VoidCallback? onDismiss, onTap;

  const ArreCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageMediaId,
    required this.actionButton,
    required this.onDismiss,
    required this.onTap,
  });

  static Widget loading() {
    return AShimmerLoading(
      aspectRatio: ARRE_CARD_ASPECT_RATIO,
      borderRadius: _borderRadius,
      height: 200,
      width: 200,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ARRE_CARD_ASPECT_RATIO,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            border: Border.all(color: AColors.BgLight, width: 0.5),
          ),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.passthrough,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                    ),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 4,
                        sigmaY: 4,
                        tileMode: TileMode.decal,
                      ),
                      child: ArreNetworkImage.mediaId(
                        imageMediaId ?? "",
                        fit: BoxFit.cover,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        showThumbnail: true,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    UserAvatarV2(
                      mediaId: imageMediaId,
                      userName: title,
                      size: 64,
                      showThumbnail: false,
                    ),
                    Column(
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: ATextStyles.sys14Bold(),
                        ),
                        SizedBox(height: 4),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: ATextStyles.sys12Regular(AColors.textDark),
                        ),
                      ],
                    ),
                    actionButton,
                  ],
                ),
              ),
              if (onDismiss != null)
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                    constraints: BoxConstraints.loose(Size.square(42)),
                    icon: Icon(
                      ArreIconsV2.cross_outline,
                      size: 20,
                      color: AColors.BgStroke,
                    ),
                    splashRadius: 18,
                    onPressed: onDismiss,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
