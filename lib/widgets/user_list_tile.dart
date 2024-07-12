import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/providers/invite_screen_providers/follow_status_provider.dart';
import 'package:arre_frontend_flutter/providers/profile_actions.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../screens/arre_message/arre_message.dart';
import '../styles/styles.dart';

class UserListTile extends ConsumerStatefulWidget {
  final String userId;
  final EdgeInsets padding;
  final bool showFollowButton;
  final bool showMessageButton;
  final VoidCallback? onTap;
  final Widget? actionButton;
  final ArreUser? userDetails;

  const UserListTile({
    required this.userId,
    this.userDetails,
    this.showFollowButton = true,
    this.showMessageButton = false,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
    this.actionButton,
    Key? key,
  }) : super(key: key);

  factory UserListTile.shrink({
    required String userId,
    TextStyle style,
  }) = _UserListTileShrink;

  @override
  ConsumerState createState() => _UserListTileState();
}

class _UserListTileState extends ConsumerState<UserListTile> {
  @override
  void initState() {
    super.initState();
    if (widget.userDetails == null) {
      ref.read(userShortDataProvider).fetchData(widget.userId);
    }
    ref.read(followStatusProvider).fetchData(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    final userShortDataPvd = ref.watch(userShortDataProvider);
    Widget? child;
    if (userShortDataPvd.hasData(widget.userId) || widget.userDetails != null) {
      final userData =
          (userShortDataPvd.getData(widget.userId) ?? widget.userDetails)!;
      final followStatus = ref.watch(followStatusProvider
          .select((value) => value.getStatus(widget.userId)));
      Widget followButton;
      if (widget.showFollowButton == true && widget.userId != arrePref.userId) {
        if (followStatus == FollowStatus.wasFollowing &&
            widget.showMessageButton) {
          followButton = FilledFlatButton(
            backgroundColor: AColors.greyDark.withOpacity(0.3),
            onPressed: () async {
              final conversationId =
                  await Utils.getConversationId(widget.userId);
              arreAnalytics.logEvent(
                GAEvent.VOICE_DM_BTN_CLICK,
                parameters: {
                  EventAttribute.ENTITY_ID: conversationId,
                  EventAttribute.ENTITY_TYPE: "conversation",
                  EventAttribute.GA_CONTEXT: GAContext.user_list_tile.name
                },
              );
              ArreNavigator.instance.push(AAppPage(
                  child: MessagesScreen(conversationId: conversationId)));
            },
            child: Text(
              "Message",
              style: ATextStyles.sys12Mini(Color(0xFF4BC7B6)),
            ),
          );
        } else if (followStatus?.following ?? false) {
          followButton = FilledFlatButton(
            backgroundColor: AColors.greyDark.withOpacity(0.3),
            onPressed: () {
              arreAnalytics.logEvent(
                GAEvent.UNFOLLOW_USER,
                parameters: {
                  EventAttribute.USER_ID: widget.userId,
                  EventAttribute.GA_CONTEXT: GAContext.user_list_tile.name,
                },
              );
              ProfileAction.unFollowUser(ref, widget.userId);
            },
            child: Text(
              "Following",
              style: ATextStyles.sys12Mini(Color(0xFF4BC7B6)),
            ),
          );
        } else {
          followButton = FilledFlatButton(
            backgroundColor: Color(0xFF4BC7B6),
            onPressed: () {
              arreAnalytics.logEvent(
                GAEvent.FOLLOW_USER,
                parameters: {
                  EventAttribute.USER_ID: widget.userId,
                  EventAttribute.GA_CONTEXT: GAContext.user_list_tile.name,
                },
              );
              ProfileAction.followUser(ref, widget.userId);
            },
            child: Text(
              "Follow",
              style: ATextStyles.sys12Mini(Color(0xFFF6FCFB)),
            ),
          );
        }
      } else {
        followButton = SizedBox();
      }
      child = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UserAvatarV2(
            size: 50,
            mediaId: userData.profilePictureMediaId,
            userName: userData.username,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              userData.username,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: ATextStyles.sys14PrimaryBold(Colors.white),
            ),
          ),
          SizedBox(width: 24),
          followButton,
          if (widget.actionButton != null) widget.actionButton!,
        ],
      );
    } else if (userShortDataPvd.isLoading(widget.userId)) {
      child = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: AColors.greyDark.withOpacity(0.5),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Container(
              height: 24,
              width: 180,
              color: AColors.greyDark.withOpacity(0.5),
            ),
          ),
          SizedBox(width: 24),
          if (widget.showFollowButton)
            FilledFlatButton(
              backgroundColor: AColors.greyDark.withOpacity(0.3),
              onPressed: () {},
              child: Text(""),
            )
        ],
      );
    }
    if (child != null) {
      child = GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: widget.onTap ??
            () {
              ArreNavigator.instance
                  .push(AAppPage(child: ProfileScreen(userId: widget.userId)));
            },
        child: Container(
          padding: widget.padding,
          alignment: Alignment.center,
          child: child,
        ),
      );
    }
    return child ?? SizedBox();
  }
}

class _UserListTileShrink extends UserListTile {
  final TextStyle style;
  final int maxLines = 1;

  const _UserListTileShrink({
    Key? key,
    required String userId,
    this.style = const TextStyle(
      fontFamily: 'Acumin Pro',
      fontWeight: FontWeight.w400,
      color: AColors.white,
      fontSize: 14,
    ),
  }) : super(
          key: key,
          userId: userId,
          padding: EdgeInsets.zero,
          showFollowButton: false,
        );

  @override
  ConsumerState<_UserListTileShrink> createState() =>
      _UserListTileShrinkState();
}

class _UserListTileShrinkState extends ConsumerState<_UserListTileShrink> {
  @override
  void initState() {
    super.initState();
    ref.read(userShortDataProvider).fetchData(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    final userShortDataPvd = ref.watch(userShortDataProvider);
    Widget? child;
    if (userShortDataPvd.hasData(widget.userId)) {
      final userData = userShortDataPvd.getData(widget.userId)!;

      child = Text(
        "@${userData.username}",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: widget.style,
      );
    } else if (userShortDataPvd.isLoading(widget.userId)) {
      child = Text(
        "",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: widget.style,
      );
    }
    if (child != null) {
      child = GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          ArreNavigator.instance
              .push(AAppPage(child: ProfileScreen(userId: widget.userId)));
        },
        child: child,
      );
    }
    return child ?? SizedBox();
  }
}
