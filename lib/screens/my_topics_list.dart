import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/my_topics_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_user_graph_gql/arre_user_graph_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/Firebase Analytics/firebase_analytics_service.dart';

class MyTopicsList extends ConsumerStatefulWidget {
  final bool isHomePage;

  const MyTopicsList({Key? key, this.isHomePage = false}) : super(key: key);

  @override
  _MyTopicsListState createState() => _MyTopicsListState();
}

class _MyTopicsListState extends ConsumerState<MyTopicsList> {
  bool showAllItems = false;

  @override
  Widget build(BuildContext context) {
    final recommendedTopicsPvd = ref.watch(recommendedTopicsProvider);

    Widget child;
    if (recommendedTopicsPvd.hasData) {
      if (recommendedTopicsPvd.data!.isNotEmpty) {
        final topics = recommendedTopicsPvd.data!;

        if (widget.isHomePage) {
          if (topics.length > 4) {
            int halfLength = (topics.length / 2).ceil();
            final firstHalf = topics.take(halfLength).toList();
            final secondHalf = topics.skip(halfLength).toList();
            child = SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _topicsListWidget(firstHalf),
                      SizedBox(height: 10),
                      _topicsListWidget(secondHalf),
                    ],
                  ),
                ],
              ),
            );
          } else {
            child = SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _topicsListWidget(topics),
                ],
              ),
            );
          }
        } else {
          int initialTopicCount = 8;
          final visibleTopicItems =
              showAllItems ? topics : topics.take(initialTopicCount).toList();
          child = SafeArea(
            child: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    _topicsListWidget(visibleTopicItems),
                  ],
                ),
                SizedBox(height: 16),
                if (topics.length > 8)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showAllItems = !showAllItems;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(!showAllItems ? 'See more' : 'See less',
                            style:
                                ATextStyles.sys14Regular(AColors.tealPrimary)),
                        SizedBox(width: 10),
                        Transform.rotate(
                          angle: !showAllItems ? 0 : 3.141,
                          child: Icon(
                            ArreIconsV2.dropdown_outline,
                            size: 18,
                            color: AColors.tealPrimary,
                          ),
                        )
                      ],
                    ),
                  ),
                SizedBox(height: 16),
              ],
            ),
          );
        }
      } else {
        child = ArreErrorWidget.empty(message: "No topics to select");
        ref.read(selectedTopicsProvider.notifier).clearSelectedTopics();
      }
    } else if (recommendedTopicsPvd.isLoading) {
      child = Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(child: ACommonLoader(color: AColors.tealPrimary)));
    } else {
      child = ArreErrorWidget(
        error: recommendedTopicsPvd.error,
        onPressed: recommendedTopicsPvd.init,
      );
    }

    return child;
  }

  Widget _topicsListWidget(List<GGetAllKeywordsData_response_data> topicsList) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: topicsList.asMap().entries.map((topic) {
        return _Topic(
            topicName: topic.value.name, topicId: topic.value.keywordId);
      }).toList(),
    );
  }
}

class _Topic extends ConsumerWidget {
  final String topicName;
  final String topicId;

  const _Topic({
    Key? key,
    required this.topicName,
    required this.topicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isSelected =
        ref.watch(selectedTopicsProvider.notifier).isSelected(topicId);

    void toggleSelection() async {
      arreAnalytics.logEvent(
        GAEvent.TOPIC_SELECTED,
        parameters: {EventAttribute.TOPIC_ID: topicId},
      );
      ref.read(selectedTopicsProvider.notifier).addTopic(topicId);
      await ApiService.instance.markInterestedTopic(topicId);
      ref.read(recommendedTopicsProvider).refresh();
      ref.read(userInterestedTopicsProvider).refresh();
      final isTopicsSelected = arrePref.getBool(PrefKey.IS_TOPICS_SELECTED);
      if (isTopicsSelected == null) {
        showSnackBar(
          content: Text(
              "Your topic was saved. We will suggest voicepods based on your selection."),
          action: SnackBarAction(
            label: "undo",
            onPressed: () async {
              arreAnalytics.logEvent(
                GAEvent.TOPIC_UNSELECTED,
                parameters: {EventAttribute.TOPIC_ID: topicId},
              );
              ref.read(selectedTopicsProvider.notifier);
              await ApiService.instance.removeInterestedTopic(topicId);
              ref.read(recommendedTopicsProvider).refresh();
              ref.read(userInterestedTopicsProvider).refresh();
            },
          ),
        );
        arrePref.setBool(PrefKey.IS_TOPICS_SELECTED, true);
      }
    }

    return AnimatedOpacity(
      opacity: isSelected ? 0.0 : 1.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOut,
      onEnd: () =>
          ref.read(selectedTopicsProvider.notifier).clearSelectedTopics(),
      child: GestureDetector(
        onTap: toggleSelection,
        child: Container(
          height: 30,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: isSelected ? AColors.orangePrimary : AColors.BgDark,
            border: Border.all(
              color: isSelected
                  ? AColors.orangePrimary
                  : AColors.white.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(topicName),
              SizedBox(width: 8),
              Icon(
                isSelected
                    ? ArreIconsV2.tick_outline
                    : ArreIconsV2.plus_outline,
                color: Colors.white,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
