import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../styles/styles.dart';

class ArreNetworkImage extends StatelessWidget {
  final String? src;
  final double? height, width;
  final BoxFit fit;
  final bool isSvg;
  final Color? color;
  final bool isMediaId;
  final bool showThumbnail;
  final int? cacheWidth, cacheHeight;
  final BaseCacheManager? cacheManager;
  final Color? loadingColor;

  ///BorderRadius.circular's radius
  final ShapeBorder? shape;

  static ImageProvider? imageProvider({
    String? imageUrl,
    String? mediaId,
  }) {
    assert(imageUrl != null || mediaId != null,
        "Provide either imageUrl or mediaId");
    if (imageUrl == null && mediaId != null) {
      imageUrl = AMediaService.instance.getMediaUrl(mediaId).toString();
    }
    if (imageUrl == null) {
      return null;
    }

    return CachedNetworkImageProvider(
      imageUrl,
      headers: {
        if (mediaId != null) "Authorization": arrePref.authToken!,
      },
    );
  }

  ArreNetworkImage(
    this.src, {
    Key? key,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.isSvg = false,
    this.color,
    this.shape,
    this.cacheHeight,
    this.cacheWidth,
    this.cacheManager,
    this.loadingColor = const Color(0x1e9E9E9E),
  })  : isMediaId = false,
        showThumbnail = false;

  ArreNetworkImage.mediaId(
    String mediaId, {
    Key? key,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.isSvg = false,
    this.color,
    this.shape,
    this.showThumbnail = true,
    this.cacheHeight,
    this.cacheWidth,
    this.cacheManager,
    this.loadingColor = const Color(0x1e9E9E9E),
  })  : isMediaId = true,
        src = mediaId;

  @override
  Widget build(BuildContext context) {
    var uri = isMediaId && src != null
        ? AMediaService.instance.getMediaUrl(src!, thumbnail: showThumbnail)
        : Uri.tryParse("$src");
    final imageDecorator = (Widget image) {
      return Material(
        shape: shape,
        clipBehavior: Clip.hardEdge,
        child: image,
        type: MaterialType.transparency,
      );
    };
    if (uri == null || !src.isValid) {
      return imageDecorator(Container(
        color: AColors.greyDark,
        height: height,
        width: width,
      ));
    }

    if (isSvg || uri.path.endsWith(".svg")) {
      Widget child = SvgPicture.network(
        uri.toString(),
        height: height,
        width: width,
        fit: fit,
        placeholderBuilder: (context) {
          return imageDecorator(Container(
            color: loadingColor,
            height: height,
            width: width,
          ));
        },
      );
      return imageDecorator(child);
    }

    // return Image.network(
    //   src!,
    // headers: {"Authorization": arrePref.authToken!},
    // );
    return CachedNetworkImage(
      imageUrl: uri.toString(),
      cacheManager: cacheManager,
      height: height,
      width: width,
      fit: fit,
      color: color,
      memCacheHeight: cacheHeight,
      memCacheWidth: cacheWidth,
      maxHeightDiskCache: cacheHeight,
      maxWidthDiskCache: cacheWidth,
      placeholder: (context, _) {
        return imageDecorator(Container(
          color: loadingColor,
          height: height,
          width: width,
        ));
      },
      httpHeaders: {
        if (isMediaId && arrePref.authToken != null)
          "Authorization": arrePref.authToken!,
      },
      errorWidget: (context, url, error) {
        ALogger.e(error);
        return imageDecorator(SvgPicture.network(
          uri.toString(),
          height: height,
          width: width,
          fit: fit,
          placeholderBuilder: (context) {
            return Container(color: loadingColor);
          },
          headers: {
            if (isMediaId && arrePref.authToken != null)
              "Authorization": arrePref.authToken!,
          },
        ));
      },
      imageBuilder: (_, imgProvider) {
        Widget image = Image(
          image: imgProvider,
          height: height,
          width: width,
          fit: fit,
          color: color,
        );
        return imageDecorator(image);
      },
    );
  }
}
