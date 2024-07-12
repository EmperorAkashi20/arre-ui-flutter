import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'arre_network_image.dart';

///See also [UserAvatarV2]
class UserAvatar extends StatelessWidget {
  final double? size;
  final String? imageUrl;
  final Color? borderColor;

  ///Applicable only when [borderColor] is non-null. Defaults to 1.0
  final double borderWidth;
  final String? userName;

  const UserAvatar({
    Key? key,
    this.size,
    required this.imageUrl,
    this.borderColor,
    this.borderWidth = 1.0,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (imageUrl.isValid) {
      child = ArreNetworkImage(
        imageUrl,
        fit: BoxFit.cover,
      );
    } else if (userName.isValid) {
      child = LayoutBuilder(builder: (context, constraints) {
        return Material(
          color: AColors.tealLight,
          child: Center(
            child: Text(
              userName?.toUpperCase().characters.take(2).toString() ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AColors.tealPrimary,
                  fontSize: constraints.maxHeight * 0.6,
                  fontWeight: FontWeight.w400),
            ),
          ),
        );
      });
    } else {
      child = Container(color: AColors.greyDark);
    }
    return SizedBox(
      height: size,
      width: size,
      child: Material(
        shape: CircleBorder(
          side: borderColor != null
              ? BorderSide(color: borderColor!, width: borderWidth)
              : BorderSide.none,
        ),
        clipBehavior: Clip.hardEdge,
        child: child,
      ),
    );
  }
}

class UserAvatarV2 extends StatelessWidget {
  final double size;
  final String? mediaId;
  final Color? borderColor;
  final VoidCallback? onImageTap;

  ///Applicable only when [borderColor] is non-null. Defaults to 1.0
  final double borderWidth;
  final String? userName;
  final bool showThumbnail;

  const UserAvatarV2({
    Key? key,
    required this.size,
    required this.mediaId,
    this.borderColor,
    this.borderWidth = 1.0,
    required this.userName,
    this.showThumbnail = true,
    this.onImageTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (mediaId.isValid) {
      child = ArreNetworkImage.mediaId(
        mediaId!,
        fit: BoxFit.cover,
        showThumbnail: showThumbnail,
      );
      if (onImageTap != null) {
        child = GestureDetector(
          onTap: onImageTap,
          child: child,
        );
      }
    } else if (userName.isValid) {
      child = Material(
        color: AColors.tealLight,
        child: Center(
          child: Text(
            userName?.toUpperCase().characters.take(2).toString() ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AColors.tealPrimary,
                fontSize: size * 0.5,
                fontWeight: FontWeight.w400),
          ),
        ),
      );
    } else {
      child = Material(color: AColors.greyDark);
    }
    return SizedBox(
      height: size,
      width: size,
      child: Material(
        shape: CircleBorder(
          side: borderColor != null
              ? BorderSide(color: borderColor!, width: borderWidth)
              : BorderSide.none,
        ),
        clipBehavior: Clip.hardEdge,
        child: child,
      ),
    );
  }
}
