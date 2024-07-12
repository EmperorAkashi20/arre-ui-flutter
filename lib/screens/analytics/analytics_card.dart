import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalyticsCard extends ConsumerWidget {
  final String title;
  final String value;
  final int percentage;

  const AnalyticsCard({
    Key? key,
    required this.title,
    required this.value,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AColors.BgLight,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title, style: ATextStyles.sys12Regular()),
              SizedBox(height: 2),
              Text(
                value,
                style: ATextStyles.user28Bold(),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: percentage.isNegative
                            ? AColors.red.withOpacity(0.17)
                            : AColors.tealPrimary.withOpacity(0.17),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: 80),
                              child: Text(
                                (percentage.isNegative ? "" : "+") +
                                    "$percentage%",
                                style: ATextStyles.sys14Regular(
                                    percentage.isNegative
                                        ? AColors.red
                                        : AColors.tealPrimary),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              percentage.isNegative
                                  ? ArreIconsV2.arrow_down
                                  : ArreIconsV2.arrow_up,
                              size: 12,
                              color: percentage.isNegative
                                  ? AColors.red
                                  : AColors.tealPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
