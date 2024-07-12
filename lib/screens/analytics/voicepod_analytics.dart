import 'package:arre_creator_analytics_gql/arre_creator_analytics_gql.dart';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/creator_analytics_provider.dart';
import 'package:arre_frontend_flutter/screens/analytics/about_analytics_sheet.dart';
import 'package:arre_frontend_flutter/screens/analytics/analytics_dropdown.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VoicepodAnalyticsScreen extends ConsumerStatefulWidget with ArreScreen {
  final int numberOfDays;

  const VoicepodAnalyticsScreen({
    Key? key,
    this.numberOfDays = 7,
  }) : super(key: key);

  @override
  ConsumerState createState() => _VoicepodAnalyticsScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.VOICEPOD_ANALYTICS;
}

class _VoicepodAnalyticsScreenState
    extends ConsumerState<VoicepodAnalyticsScreen> {
  @override
  void initState() {
    ref.read(voicepodLevelAnalyticsProvider(widget.numberOfDays));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedDateRange = ref.watch(selectedDateRangeProvider);
    final numberOfDays = mapDateRangeToNumberOfDays(selectedDateRange);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AColors.BgLight,
        title: Text("Voicepod Analytics"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => showAboutAnalyticsSheet(context),
            icon: Icon(ArreIconsV2.info_outline),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnalyticsDropdownButton(),
              SizedBox(height: 10),
              Expanded(child: _VoicepodAnalyticsCardList(numberOfDays)),
            ],
          ),
        ),
      ),
    );
  }

  int mapDateRangeToNumberOfDays(String dateRange) {
    switch (dateRange) {
      case "Last 7 days":
        return 7;
      case "Last 30 days":
        return 55;
      case "Last 6 months":
        return 180;
      case "Last 1 year":
        return 365;
      default:
        return 7;
    }
  }
}

class _VoicepodAnalyticsCardList extends ConsumerWidget {
  final int numberOfDays;

  _VoicepodAnalyticsCardList(this.numberOfDays);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final voicepodAnalyticsPvd =
        ref.watch(voicepodLevelAnalyticsProvider(numberOfDays));
    final voicepodAnalyticsDataList =
        voicepodAnalyticsPvd.voicepodLevelAnalyticsList;
    if (voicepodAnalyticsPvd.hasData) {
      return RefreshIndicator(
        onRefresh: () async {
          await Future.wait([
            ref.read(voicepodLevelAnalyticsProvider(numberOfDays)).refresh()
          ]);
        },
        child: NotificationListener<ScrollMetricsNotification>(
          onNotification: voicepodAnalyticsPvd.onScrollNotification,
          child: ListView.separated(
            itemCount: voicepodAnalyticsDataList!.length,
            itemBuilder: (context, index) {
              final voicepodAnalyticsData = voicepodAnalyticsDataList[index];
              return VoicepodAnalyticCard(voicepodAnalyticsData);
            },
            separatorBuilder: (context, index) {
              return Divider(height: 1.0, color: AColors.BgStroke);
            },
          ),
        ),
      );
    } else if (voicepodAnalyticsPvd.isLoading) {
      return Center(child: ACommonLoader());
    } else {
      return Center(
        child: ArreErrorWidget(
          error: voicepodAnalyticsPvd.error,
          onPressed: () {
            ref.invalidate(voicepodLevelAnalyticsProvider);
          },
        ),
      );
    }
  }
}

class VoicepodAnalyticCard extends ConsumerWidget {
  final GVoicepodLevelAnalyticsPaginatedData_response_data data;

  VoicepodAnalyticCard(this.data);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: AColors.BgDark,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: data.imageMediaFiles!.isNotEmpty
                  ? Container(
                      width: 65,
                      height: 65,
                      child: ArreNetworkImage.mediaId(
                        data.imageMediaFiles!.first,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  : null,
              title: Text(
                data.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: ATextStyles.user14Regular(),
              ),
              trailing: InkWell(
                onTap: () => ArreNavigator.instance.push(
                  AAppPage(
                    child: VoicepodDetailScreen(postId: data.postId),
                  ),
                ),
                child: Icon(
                  ArreIconsV2.frontarrow_outline,
                  size: 20,
                  color: AColors.tealPrimary,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 56.0,
              childAspectRatio: 151 / 20,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildStatTile('Views', data.impressionCount),
                _buildStatTile('Plays', data.playCount),
                _buildStatTile('Comments', data.commentCount),
                _buildStatTile('Likes', data.likeCount),
                _buildStatTile('Shares', data.shareCount),
                _buildStatTile('Saves', data.playlistInsertionCount),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatTile(String label, int value) {
    final TextStyle _style = ATextStyles.sys12Mini(AColors.textMedium);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: _style),
        Tooltip(
            message: '${value.formatWithCommas}',
            child: Text(value.shortify, style: _style)),
      ],
    );
  }
}
