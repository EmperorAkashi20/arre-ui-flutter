import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ArrePersistentHeader extends StatelessWidget {
  ///Use [PreferredSize]
  final PreferredSizeWidget child;
  final bool pinned;
  final bool floating;

  ArrePersistentHeader({
    required this.child,
    this.pinned = false,
    this.floating = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: pinned,
      floating: floating,
      delegate: PersistentPinnedHeaderDelegate(
        height: child.preferredSize.height,
        child: child,
      ),
    );
  }
}

class PersistentPinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  PersistentPinnedHeaderDelegate({
    required this.child,
    required this.height,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  /// Specifies how floating headers should animate in and out of view.
  ///
  /// If the value of this property is null, then floating headers will
  /// not animate into place.
  ///
  /// This is only used for floating headers (those with
  /// [SliverPersistentHeader.floating] set to true).
  ///
  /// Defaults to null.
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  /// Specifies an [AsyncCallback] and offset for execution.
  ///
  /// If the value of this property is null, then callback will not be
  /// triggered.
  ///
  /// This is only used for stretching headers (those with
  /// [SliverAppBar.stretch] set to true).
  ///
  /// Defaults to null.
  // OverScrollHeaderStretchConfiguration? get stretchConfiguration =>
  //     OverScrollHeaderStretchConfiguration();

  /// Specifies how floating headers and pinned headers should behave in
  /// response to [RenderObject.showOnScreen] calls.
  ///
  /// Defaults to null.
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      PersistentHeaderShowOnScreenConfiguration(
          minShowOnScreenExtent: height, maxShowOnScreenExtent: height);

  @override
  bool shouldRebuild(covariant PersistentPinnedHeaderDelegate oldDelegate) {
    return height != oldDelegate.height || child != oldDelegate.child;
  }
}
