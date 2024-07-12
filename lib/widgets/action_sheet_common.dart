import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/drag_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AssetIcon {
  final String assetName;
  final Size size;

  const AssetIcon(this.assetName, this.size);
}

mixin ActionItem {
  String get label;

  Widget get icon;

  Color? get color;

  Color? get iconBgColor;

  Color? get iconBorderColor;

  bool get enabled => true;
}

Future<T?> showActionsSheet<T extends ActionItem>({
  required BuildContext context,
  required List<ActionItem> actions,
  RouteSettings? routeSettings,
}) async {
  return showModalBottomSheet<T>(
    context: context,
    useRootNavigator: true,
    routeSettings: routeSettings,
    builder: (_) => _PostActionSheet(actions: actions),
  );
}

Future<T?> showActionsSheetBuilder<T extends ActionItem>({
  required BuildContext context,
  required List<ActionItem> Function(WidgetRef ref) actionsBuilder,
  RouteSettings? routeSettings,
}) async {
  return showModalBottomSheet<T>(
    context: context,
    useRootNavigator: true,
    routeSettings: routeSettings,
    builder: (_) => Consumer(
      builder: (context, ref, child) {
        return _PostActionSheet(actions: actionsBuilder(ref));
      },
    ),
  );
}

class _PostActionSheet<T extends ActionItem> extends StatelessWidget {
  final List<T> actions;

  _PostActionSheet({
    Key? key,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actionBtnBuilder = (T action) => ActionIconButton(
          value: action,
          label: action.label,
          icon: action.icon,
          color: action.color,
          iconBgColor: action.iconBgColor,
          iconBorderColor: action.iconBorderColor,
          enabled: action.enabled,
        );
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DragIndicator(padding: EdgeInsets.only(top: 18, bottom: 31)),
          if (actions.length < 3)
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 240),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: actions.map(actionBtnBuilder).toList(),
                ),
              ),
            )
          else
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 80 / 60,
              children: actions.map(actionBtnBuilder).toList(),
            ),
        ],
      ),
    );
  }
}

class ActionIconButton<T> extends StatelessWidget {
  final T value;
  final String label;

  /// All assets should be in svg format, we'll migrate to the IconData format later
  final Widget icon;
  final Color color;
  final Color iconBgColor;
  final Color iconBorderColor;
  final bool enabled;

  ActionIconButton({
    Key? key,
    required this.value,
    required this.label,
    required this.icon,
    Color? color,
    Color? iconBgColor,
    Color? iconBorderColor,
    this.enabled = true,
  })  : this.color =
            enabled ? color ?? const Color(0xFF4BC7B6) : AColors.stateDisabled,
        this.iconBgColor = iconBgColor ?? const Color(0xFFFFFFFF),
        this.iconBorderColor = enabled
            ? iconBorderColor ?? const Color(0xFFCFECE9)
            : AColors.stateDisabled,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconTheme.of(context).copyWith(color: color),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: enabled ? () => Navigator.of(context).pop(value) : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 6),
              height: 60,
              width: 60,
              decoration: ShapeDecoration(
                shape: CircleBorder(
                    side: BorderSide(color: iconBorderColor, width: 1)),
                color: iconBgColor,
              ),
              child: icon,
            ),
            Text(
              label,
              style: ATextStyles.sys12Mini(color),
            ),
          ],
        ),
      ),
    );
  }
}
