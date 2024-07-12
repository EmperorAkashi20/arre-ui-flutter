import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void showAboutAnalyticsSheet(context) {
  showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    useSafeArea: true,
    isScrollControlled: true,
    builder: (_) {
      return _AboutAnalyticsSheet();
    },
  );
}

class _AboutAnalyticsSheet extends ConsumerWidget {
  const _AboutAnalyticsSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.transparent,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            Text(
              "What is Analytics ?",
              style: TextStyle(
                fontFamily: "Acumin Pro",
                color: Theme.of(context).hintColor,
                // cardDescriptionText,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Analytics is a place that provides in-depth data and insights about your Voice account's performance, audience engagement, and impact.",
              style: ATextStyles.sys12Regular(AColors.textMedium),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  _buildListTile(
                    "Total Views",
                    "Number of times your voicepod was seen by users",
                  ),
                  _buildListTile(
                    "Total listening time",
                    "Total amount of time your voicepod was played",
                  ),
                  _buildListTile(
                    "Unique listeners",
                    "Number of different users who listened to your voicepods",
                  ),
                  _buildListTile(
                    "Added to playlist",
                    "Number of times your voicepod was added to a playlist by other users",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Note: The change in the percentages is relative to the   duration you have selected",
              style: ATextStyles.sys12Regular(AColors.textMedium),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              child: FilledFlatButton(
                  borderRadius: 10,
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("I’ve  Understood",
                      textAlign: TextAlign.center,
                      style: ATextStyles.sys14Bold())),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        horizontalTitleGap: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: ATextStyles.sys14Bold()),
            SizedBox(height: 5),
            Text(description,
                style: ATextStyles.sys12Regular(AColors.textMedium))
          ],
        ),
      ),
    );
  }
}
