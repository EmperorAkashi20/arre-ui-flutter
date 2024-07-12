import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/screens/communities/communities.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_card.dart';
import 'package:flutter/material.dart';

import 'filled_icon_button.dart';

class CommunityCard extends StatelessWidget {
  final GACommunityShortInfo community;
  final VoidCallback? onDismiss;

  const CommunityCard({
    super.key,
    required this.community,
    this.onDismiss,
  });

  static Widget loading() {
    return ArreCard.loading();
  }

  @override
  Widget build(BuildContext context) {
    return ArreCard(
      title: community.title,
      description: community.subTitle,
      imageMediaId: community.thumbnailMediaId,
      onTap: () {
        arreAnalytics.logEvent(
          GAEvent.VC_REC_CARD_CLICK,
          parameters: {
            EventAttribute.ENTITY_TYPE: EntityType.voiceclub.name,
            EventAttribute.ENTITY_ID: community.communityId,
          },
        );
        ArreNavigator.instance.push(
            AAppPage(child: CommunityDetailScreen(community.communityId)));
      },
      actionButton: SizedBox(
        height: 26,
        child: FilledFlatButton(
          onPressed: () {
            ArreNavigator.instance.push(
                AAppPage(child: CommunityDetailScreen(community.communityId)));
          },
          child: Text("View"),
        ),
      ),
      onDismiss: onDismiss != null
          ? () {
              arreAnalytics.logEvent(
                GAEvent.VC_REC_CARD_DISMISS,
                parameters: {
                  EventAttribute.ENTITY_TYPE: EntityType.voiceclub.name,
                  EventAttribute.ENTITY_ID: community.communityId,
                },
              );
              onDismiss!();
            }
          : null,
    );
  }
}
