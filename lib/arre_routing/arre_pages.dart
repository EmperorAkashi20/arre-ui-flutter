part of arre_router;

mixin ArreScreen on Widget {
  Uri? get uri;

  String get screenName;

  bool get isOnboardingRequired => false;
}

abstract class ArrePage<T> extends Page {
  final Completer<T> completer;
  final ArreScreen child;
  final bool useRootNavigator;
  final bool fullscreenDialog;

  _ARouterDelegateMixin? get delegate;

  ArrePage({
    required this.child,
    super.arguments,
    super.restorationId,
    LocalKey? key,
    this.useRootNavigator = false,
    this.fullscreenDialog = false,
  })  : completer = Completer<T>(),
        super(
          key: key ?? ValueKey(child),
          name: child.screenName,
        );

  Uri? get uri => child.uri;

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      fullscreenDialog: fullscreenDialog,
      builder: (_) {
        return child;
      },
    );
  }

  @override
  String toString() {
    return "${this.runtimeType}(${child.runtimeType}, $name)";
  }
}

class AGlobalPage<T> extends ArrePage<T> {
  AGlobalPage({
    required super.child,
    super.arguments,
    super.restorationId,
    super.fullscreenDialog,
    super.key,
  }) : super(useRootNavigator: true);

  _ARouterDelegateMixin get delegate => ArreNavigator.instance;
}

class AAppPage<T> extends ArrePage<T> {
  AAppPage({
    required super.child,
    super.arguments,
    super.restorationId,
    super.key,
    super.fullscreenDialog,
  }) : super(useRootNavigator: false);

  _ARouterDelegateMixin? get delegate => _InternalRouterDelegate.instance;
}

class AAppModalBottomSheetPage<T> extends AAppPage<T> {
  final Color? backgroundColor;
  final String? barrierLabel;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final BoxConstraints? constraints;
  final Color? barrierColor;
  final bool isScrollControlled;
  final bool useRootNavigator;
  final bool isDismissible;
  final bool enableDrag;
  final bool? showDragHandle;
  final bool useSafeArea;

  final AnimationController? transitionAnimationController;
  final Offset? anchorPoint;

  AAppModalBottomSheetPage({
    required super.child,
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.barrierColor,
    this.showDragHandle,
    this.transitionAnimationController,
    this.anchorPoint,
    this.isScrollControlled = false,
    this.useRootNavigator = false,
    this.isDismissible = true,
    this.enableDrag = true,
    this.useSafeArea = false,
    super.arguments,
    super.restorationId,
    super.key,
    super.fullscreenDialog,
  });

  _ARouterDelegateMixin? get delegate => _InternalRouterDelegate.instance;

  @override
  Route createRoute(BuildContext context) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    return ModalBottomSheetRoute<T>(
      builder: (_) => child,
      capturedThemes: InheritedTheme.capture(
          from: context, to: delegate?.navigatorKey?.currentContext),
      isScrollControlled: isScrollControlled,
      barrierLabel: barrierLabel ?? localizations.scrimLabel,
      barrierOnTapHint:
          localizations.scrimOnTapHint(localizations.bottomSheetLabel),
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      isDismissible: isDismissible,
      modalBarrierColor:
          barrierColor ?? Theme.of(context).bottomSheetTheme.modalBarrierColor,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      settings: this,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
      useSafeArea: useSafeArea,
    );
  }
}
