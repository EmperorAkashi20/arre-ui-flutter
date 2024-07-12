import 'dart:math' as math;
import 'package:arre_frontend_flutter/providers/communities/community_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/post_data_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/user_post_relation_provider.dart';
import 'package:arre_frontend_flutter/providers/post_visibility_provider.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/shimmer_voicepod_card.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../../models/src/post.dart';
import '../../widgets/voicepod/voicepod_card.dart';

class DemoVoicepodCard extends ConsumerStatefulWidget {
  final Post post;
  final Widget playButton;

  const DemoVoicepodCard(
    this.post, {
    Key? key,
    required this.playButton,
  }) : super(key: key);

  @override
  ConsumerState<DemoVoicepodCard> createState() => _DemoVoicepodCardState();
}

class _DemoVoicepodCardState extends ConsumerState<DemoVoicepodCard> {
  String get postId => widget.post.postId;

  @override
  Widget build(BuildContext context) {
    return _CardBody(
      post: widget.post,
      playButton: widget.playButton,
    );
  }
}

class _CardBody extends ConsumerWidget {
  final Widget playButton;
  final Post post;

  const _CardBody({
    Key? key,
    required this.post,
    required this.playButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = Padding(
      padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
      child: ExpandableText(
        post.title,
        expandText: "see more",
        animation: true,
        maxLines: 4,
        style: ATextStyles.user16Regular(AColors.white),
        linkStyle: ATextStyles.user12Regular(AColors.textLight),
        hashtagStyle: ATextStyles.user14Regular(AColors.tealPrimary),
      ),
    );

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: AColors.BgStroke.withOpacity(0.2)),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      color: AColors.BgLight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _TopBar(
              post: post,
              showTimestamp: false,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: title),
                Container(margin: EdgeInsets.all(10), child: playButton),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TopBar extends ConsumerStatefulWidget {
  final Post post;
  final double avatarSize = 40.0;
  final EdgeInsets padding;
  final bool showTimestamp;

  const _TopBar({
    Key? key,
    required this.post,
    this.showTimestamp = true,
    this.padding = const EdgeInsets.fromLTRB(10, 10, 10, 10),
  }) : super(key: key);

  @override
  ConsumerState createState() => __TopBarState();
}

class __TopBarState extends ConsumerState<_TopBar> {
  @override
  Widget build(BuildContext context) {
    final post = widget.post;
    // Widget postPrivacy;
    final userDataSource1 = ref.watch(
        userShortDataProvider.select((value) => value.getData(post.userId)));
    final userDataSource2 = post.user;

    final username = userDataSource1?.username ?? userDataSource2?.username;
    final profilePictureMediaId = userDataSource1?.profilePictureMediaId ??
        userDataSource2?.profilePictureMediaId;
    Widget usernameWidget = Text(
      "@${username ?? ""}",
      style: TextStyle(
        color: AColors.textLight,
        fontFamily: 'Hind',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        // height: 2,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
    //
    // if (post.isPrivate) {
    //   postPrivacy = Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Icon(
    //         ArreIconsV2.private_filled,
    //         size: 12,
    //         color: Colors.white,
    //       ),
    //       SizedBox(width: 2),
    //       Text(
    //         "Only me",
    //         style: ATextStyles.sys12Mini(Color(0xFFBDCAC9)),
    //       )
    //     ],
    //   );
    // } else if (post.communityId.isValid) {
    //   final name =
    //       ref.watch(communityNameProvider(post.communityId ?? "")).valueOrNull;
    //   postPrivacy = Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Icon(
    //         ArreIconsV2.users,
    //         size: 14,
    //         color: Colors.white,
    //       ),
    //       SizedBox(width: 2),
    //       Flexible(
    //         child: Text(
    //           name ?? "Community",
    //           style: ATextStyles.sys12Mini(Color(0xFFBDCAC9)),
    //           maxLines: 1,
    //           overflow: TextOverflow.ellipsis,
    //         ),
    //       )
    //     ],
    //   );
    // } else {
    //   postPrivacy = Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Icon(
    //         ArreIconsV2.public_filled,
    //         size: 12,
    //         color: Colors.white,
    //       ),
    //       SizedBox(width: 4),
    //       Text(
    //         "Public",
    //         style: ATextStyles.sys12Mini(Color(0xFFBDCAC9)),
    //       )
    //     ],
    //   );
    // }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: widget.padding,
          child: UserAvatarV2(
            mediaId: profilePictureMediaId,
            userName: username,
            size: widget.avatarSize,
            // borderColor: AColors.tealPrimary,
          ),
        ),
        usernameWidget,
      ],
    );
  }
}
