import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/creator_analytics_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/screens/analytics/analytics_card.dart';
import 'package:arre_frontend_flutter/screens/analytics/analytics_dropdown.dart';
import 'package:arre_frontend_flutter/screens/analytics/voicepod_analytics.dart';
import 'package:arre_frontend_flutter/screens/edit_profile/edit_profile_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileAnalytics extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDateRange = ref.watch(selectedDateRangeProvider);
    final numberOfDays = mapDateRangeToNumberOfDays(selectedDateRange);

    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ProfileCompleteNudge(),
                    AnalyticsDropdownButton(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned.fill(
                            child: _AnalyticsCardGrid(numberOfDays),
                          ),
                        ],
                      ),
                    ),
                    FilledFlatButton(
                      onPressed: () => ArreNavigator.instance.push(AAppPage(
                          child: VoicepodAnalyticsScreen(
                              numberOfDays: numberOfDays))),
                      backgroundColor: AColors.BgDark,
                      borderRadius: 10,
                      borderSide: BorderSide(color: AColors.tealPrimary),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Detailed Voicepod Analytics",
                          textAlign: TextAlign.center,
                          style: ATextStyles.sys14Bold(AColors.tealPrimary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  int mapDateRangeToNumberOfDays(String dateRange) {
    switch (dateRange) {
      case "Last 7 days":
        return 7;
      case "Last 30 days":
        return 30;
      case "Last 6 months":
        return 180;
      case "Last 1 year":
        return 365;
      default:
        return 7;
    }
  }
}

class _AnalyticsCardGrid extends ConsumerWidget {
  final int numberOfDays;

  _AnalyticsCardGrid(this.numberOfDays);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAnalyticsPvd =
        ref.watch(userlevelAnalyticsProvider(numberOfDays));

    Widget child;
    if (userAnalyticsPvd.hasValue) {
      final userAnalytics = userAnalyticsPvd.value!;

      final userAnalyticsData = [
        {
          'title': "Total Views",
          'value': userAnalytics.totalImpressions.shortify,
          'percent': userAnalytics.changeInTotalImpressions,
        },
        {
          'title': "Total Plays",
          'value': userAnalytics.totalPlayCount.shortify,
          'percent': userAnalytics.changeInTotalPlayCount,
        },
        {
          'title': "Total Listening Time",
          'value': userAnalytics.totalStreamTime,
          'percent': userAnalytics.changeInTotalStreamTime,
        },
        {
          'title': "Unique Listens",
          'value': userAnalytics.totalUniqueListeners.shortify,
          'percent': userAnalytics.changeInTotalUniqueListeners,
        },
        {
          'title': "Total Likes",
          'value': userAnalytics.totalLikes.shortify,
          'percent': userAnalytics.changeInTotalLikes,
        },
        {
          'title': "Added to Playlist",
          'value': userAnalytics.totalPlaylistInsertion.shortify,
          'percent': userAnalytics.changeInTotalPlaylistInsertion,
        },
        {
          'title': "Total Comments",
          'value': userAnalytics.totalComments.shortify,
          'percent': userAnalytics.changeInTotalComments,
        },
        {
          'title': "Total Shares",
          'value': userAnalytics.totalShares.shortify,
          'percent': userAnalytics.changeInTotalShares,
        },
      ];

      child = RefreshIndicator(
        onRefresh: () async {
          await Future.wait([
            ref.refresh(userlevelAnalyticsProvider(numberOfDays).future),
          ]);
        },
        child: GridView.builder(
          itemCount: userAnalyticsData.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 167 / 107,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final data = userAnalyticsData[index];

            return AnalyticsCard(
              title: data['title'].toString(),
              value: data['value'].toString(),
              percentage: data['percent'] as int,
            );
          },
        ),
      );
    } else if (userAnalyticsPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Container(
          alignment: Alignment.topCenter,
          child: ArreErrorWidget(
              error: userAnalyticsPvd.error,
              onPressed: () => ref.invalidate(userlevelAnalyticsProvider)));
    }

    return child;
  }
}

class _ProfileCompleteNudge extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() => __ProfileIncompleteState();
}

class __ProfileIncompleteState extends ConsumerState<_ProfileCompleteNudge> {
  Future<void> dismissNudge(WidgetRef ref) async {
    arreAnalytics.logEvent(GAEvent.DISMISSED_FINISH_PROFILE_NUDGE);
    await arrePref.setBool(PrefKey.HAS_DISMISSED_PROFILE_COMPLETE_NUDGE, true);
    setState(() {});
  }

  bool get hasDismissedProfileNudge =>
      arrePref.getBool(PrefKey.HAS_DISMISSED_PROFILE_COMPLETE_NUDGE) ?? false;

  @override
  Widget build(BuildContext context) {
    final userId = ref.watch(currentUserProvider).userId!;
    final data = ref.watch(userProfileProvider(userId)).data;
    final profilePercent = data?.profileCompletionPercentage;
    if (hasDismissedProfileNudge ||
        profilePercent == null ||
        profilePercent == 100) return SizedBox();

    return GestureDetector(
      onTap: () {
        arreAnalytics.logEvent(
          GAEvent.PROFILE_COMPLETE_NUDGE_CLICK,
          parameters: {EventAttribute.GA_CONTEXT: "analytics_screen"},
        );
        ArreNavigator.instance
            .push(AGlobalPage(child: EditProfileScreen(userDetails: data)));
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
        decoration: BoxDecoration(
          color: Color(0xFF443137),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AColors.red),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "$profilePercent%",
                    style: TextStyle(
                        fontFamily: 'ubuntu',
                        color: Colors.white,
                        fontSize: 26,
                        height: 29.87 / 26,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Unlock greater visibility!",
                            style: ATextStyles.sys14Bold(),
                            textAlign: TextAlign.end,
                          ),
                          Text(
                            "Elevate your reach with a complete profile",
                            style: ATextStyles.sys12Regular(),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    constraints: BoxConstraints.tight(Size.square(48)),
                    iconSize: 18,
                    splashRadius: 12,
                    alignment: Alignment.center,
                    padding: EdgeInsets.zero,
                    onPressed: () => dismissNudge(ref),
                    icon: Icon(ArreIconsV2.cross_outline),
                  )
                ],
              ),
            ),
            Container(
              height: 6,
              margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(42),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: profilePercent / 100,
                    alignment: Alignment.centerLeft,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AColors.tealPrimary,
                        borderRadius: BorderRadius.circular(42),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
