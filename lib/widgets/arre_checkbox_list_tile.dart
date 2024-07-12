import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ACheckboxListTile extends StatelessWidget {
  final Widget? title, subtitle;
  final bool value;
  final void Function(bool value) onChanged;

  const ACheckboxListTile({
    super.key,
    this.title,
    this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity.compact,
      contentPadding: EdgeInsets.zero,
      onTap: () => onChanged(!value),
      title: title,
      subtitle: subtitle,
      trailing: SizedBox(
        height: 22,width: 40,
        child: FlutterSwitch(
          width: 40,
          height: 22,
          toggleSize: 18,
          padding: 2.0,
          value: value,
          activeColor: AColors.tealPrimary,
          onToggle: onChanged,
        ),
      ),
    );
  }
}
