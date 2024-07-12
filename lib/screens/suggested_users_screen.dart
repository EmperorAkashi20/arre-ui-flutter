import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/creators_recommended_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/creator_card.dart';
import 'package:arre_user_graph_gql/arre_user_graph_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SuggestedUsersScreen extends ConsumerStatefulWidget with ArreScreen {
  const SuggestedUsersScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SuggestedUsersScreen> createState() =>
      _SuggestedUsersScreenState();

  @override
  Uri? get uri => Uri.parse("/network/suggestions");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/network/suggestions") {
      return AAppPage(child: SuggestedUsersScreen());
    }
    return null;
  }

  @override
  String get screenName => GAScreen.SUGGESTED_USERS;
}

class _SuggestedUsersScreenState extends ConsumerState<SuggestedUsersScreen> {
  @override
  Widget build(BuildContext context) {
    final creatorsPvd = ref.watch(recommendedCreatorsProvider);
    Widget child;
    if (creatorsPvd.hasData) {
      if (creatorsPvd.data!.isNotEmpty) {
        List<GGetRecommendedUsersData_response_data>? creatorsData =
            creatorsPvd.data;
        child = GridView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 154 / 187,
          ),
          shrinkWrap: true,
          itemCount: creatorsData?.length,
          itemBuilder: (BuildContext context, int index) {
            return CreatorCard(creatorsData![index]);
          },
        );
      } else {
        child = Center(
            child: ArreErrorWidget.empty(
                message:
                    "You have successfully followed\nall the suggested users"));
      }
    } else if (creatorsPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else if (creatorsPvd.hasError) {
      child = Center(
        child: ArreErrorWidget(
            error: creatorsPvd.error, onPressed: creatorsPvd.refresh),
      );
    } else {
      child = SizedBox();
    }
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("SUGGESTED USERS", style: ATextStyles.sys14Bold()),
      ),
      body: SafeArea(child: child),
    );
  }
}
