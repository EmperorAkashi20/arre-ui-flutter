import 'package:arre_frontend_flutter/providers/creator_analytics_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalyticsDropdownButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDateRange = ref.watch(selectedDateRangeProvider);

    return Container(
      width: 135,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(color: AColors.tealPrimary, width: 1.0),
      ),
      child: PopupMenuButton<String>(
        initialValue: selectedDateRange,
        onSelected: (newValue) {
          ref
              .read(selectedDateRangeProvider.notifier)
              .setSelectedDateRange(newValue);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              selectedDateRange,
              style: ATextStyles.sys16Medium(AColors.tealPrimary),
            ),
            Icon(ArreIconsV2.dropdown_outline,
                color: AColors.tealPrimary, size: 20),
          ],
        ),
        itemBuilder: (BuildContext context) => [
          PopupMenuItem<String>(value: last7Days, child: Text(last7Days)),
          PopupMenuItem<String>(value: last30Days, child: Text(last30Days)),
          PopupMenuItem<String>(value: last6Months, child: Text(last6Months)),
          PopupMenuItem<String>(value: last1Year, child: Text(last1Year)),
        ],
      ),
    );
  }
}
