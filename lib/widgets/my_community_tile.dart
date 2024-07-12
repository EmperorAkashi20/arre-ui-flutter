import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/screens/communities/communities.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:flutter/material.dart';

class MyCommunityTile extends StatelessWidget {
  final GMyCommunityShortInfo community;
  final EdgeInsets padding;

  const MyCommunityTile({
    required this.community,
    this.padding = const EdgeInsets.fromLTRB(20, 6, 20, 6),
  });

  static Widget loading({
    EdgeInsets padding = const EdgeInsets.fromLTRB(20, 4, 20, 4),
  }) {
    return Padding(
      padding: padding,
      child: const Row(
        children: [
          AShimmerLoading(
            height: 64,
            width: 64,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          SizedBox(width: 8),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AShimmerLoading(
                height: 12,
                width: 112,
              ),
              SizedBox(height: 8),
              AShimmerLoading(
                height: 8,
                width: 142,
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        arreAnalytics.logEvent(
          GAEvent.VC_MY_VOICECLUB_CARD_CLICK,
          parameters: {
            EventAttribute.ENTITY_TYPE: EntityType.voiceclub.name,
            EventAttribute.ENTITY_ID: community.communityId,
          },
        );
        ArreNavigator.instance.push(
            AAppPage(child: CommunityDetailScreen(community.communityId)));
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            ArreNetworkImage.mediaId(
              community.thumbnailMediaId ?? "",
              width: 64,
              height: 64,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    community.title,
                    style: ATextStyles.sys14Bold(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    community.subTitle,
                    style: ATextStyles.sys12Regular(AColors.textDark),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Icon(
              ArreIconsV2.frontarrow_outline,
              size: 24,
              color: AColors.textDark,
            ),
          ],
        ),
      ),
    );
  }
}
