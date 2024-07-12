import 'dart:math';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/my_topics_provider.dart';
import 'package:arre_frontend_flutter/screens/my_topics_list.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/Firebase Analytics/firebase_analytics_service.dart';

class MyTopicsScreen extends ConsumerStatefulWidget with ArreScreen {
  const MyTopicsScreen({super.key});

  @override
  ConsumerState createState() => _MyTopicsScreenState();

  @override
  String get screenName => GAScreen.MY_TOPICS;

  @override
  Uri? get uri => Uri.parse("/my_topics");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/my_topics") {
      return AAppPage(child: MyTopicsScreen());
    }
    return null;
  }
}

class _MyTopicsScreenState extends ConsumerState<MyTopicsScreen> {
  bool showAllItems = false;
  final random = Random();

  Map<String, Map<Color, Color>> topicColorPairs = {};

  List<Map<Color, Color>> colorPairs = [
    {Color(0xFFE1E1E1): Colors.black},
    {Color(0xFFDA771F): Colors.white},
    {Color(0xFF36807D): Colors.white},
  ];

  @override
  Widget build(BuildContext context) {
    final userInterestedTopicsPvd = ref.watch(userInterestedTopicsProvider);
    final recommendedTopicsPvd = ref.watch(recommendedTopicsProvider);
    String title = (userInterestedTopicsPvd.hasData &&
            userInterestedTopicsPvd.data!.isNotEmpty)
        ? "Add more to your list"
        : "Choose your go-to topics";
    Widget interestedTopicsSection;
    if (userInterestedTopicsPvd.data != null) {
      if (userInterestedTopicsPvd.data!.isNotEmpty) {
        final topics = userInterestedTopicsPvd.data;
        interestedTopicsSection = Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "These are the topics you've chosen. Feel free to make changes."),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: [
                      for (int i = 0; i < topics!.length; i++)
                        _buildSelectedTopic(
                            topics[i].name, topics[i].keywordId, i),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      } else {
        interestedTopicsSection =
            ArreErrorWidget.empty(message: "You haven't picked any topic yet.");
      }
    } else if (userInterestedTopicsPvd.isLoading) {
      interestedTopicsSection = Center(child: ACommonLoader());
    } else {
      interestedTopicsSection = ArreErrorWidget(
        error: userInterestedTopicsPvd.error,
        onPressed: userInterestedTopicsPvd.init,
      );
    }

    Widget recommendedTopicSection;
    if (recommendedTopicsPvd.data != null &&
        recommendedTopicsPvd.data!.isNotEmpty) {
      recommendedTopicSection = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Text(title, style: ATextStyles.sys20Bold()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("You will see voicepods from these topics more often",
                style: ATextStyles.sys14Regular()),
          ),
          SizedBox(height: 12),
          MyTopicsList(),
        ],
      );
    } else {
      recommendedTopicSection = Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Text(
            "No more topics left.\nYou have already chosen all the topics!",
            textAlign: TextAlign.center,
            style: ATextStyles.sys14Regular(AColors.textMedium)),
      );
      ref.read(selectedTopicsProvider.notifier).clearSelectedTopics();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("My Topics"),
        leading: ABackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: interestedTopicsSection,
            ),
            recommendedTopicSection
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedTopic(String topicName, String topicId, int index) {
    if (!topicColorPairs.containsKey(topicId)) {
      int randomIndex = random.nextInt(colorPairs.length);
      topicColorPairs[topicId] = colorPairs[randomIndex];
    }
    Map<Color, Color> selectedPair = topicColorPairs[topicId]!;
    Color backgroundColor = selectedPair.keys.first;
    Color textColor = selectedPair.values.first;

    return Consumer(builder: (context, ref, _) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 30,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: backgroundColor,
              border: Border.all(
                color: AColors.white.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Text(
              topicName,
              style: TextStyle(
                color: textColor,
              ),
            ),
          ),
          Positioned(
            top: -4,
            right: -8,
            child: InkWell(
              onTap: () async {
                arreAnalytics.logEvent(
                  GAEvent.TOPIC_UNSELECTED,
                  parameters: {EventAttribute.TOPIC_ID: topicId},
                );
                await ApiService.instance.removeInterestedTopic(topicId);
                ref.read(userInterestedTopicsProvider).refresh();
                ref.read(recommendedTopicsProvider).refresh();
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Color(0xFFC2C2C2).withOpacity(0.6),
                    shape: BoxShape.circle),
                child: Icon(Icons.remove, size: 12),
              ),
            ),
          ),
        ],
      );
    });
  }
}
