library voicepod;

import 'dart:async';
import 'dart:developer';
import 'dart:math' as math;
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/models/comment_reply.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/communities/community_feed_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/home_screen_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/post_data_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/similar_voicepods_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/user_post_relation_provider.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/voicepod_actions_provider.dart';
import 'package:arre_frontend_flutter/providers/invite_screen_providers/follow_status_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/media_sound_manager.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/playlist_details_provider.dart';
import 'package:arre_frontend_flutter/providers/post_comments_provider.dart';
import 'package:arre_frontend_flutter/providers/post_visibility_provider.dart';
import 'package:arre_frontend_flutter/providers/profile_actions.dart';
import 'package:arre_frontend_flutter/providers/remote_config_manager.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/screens/arre_message/arre_message.dart';
import 'package:arre_frontend_flutter/screens/communities/communities.dart';
import 'package:arre_frontend_flutter/screens/edit_profile/edit_profile_screen.dart';
import 'package:arre_frontend_flutter/screens/future_loader_dialog.dart';
import 'package:arre_frontend_flutter/screens/photo_view_dialog.dart';
import 'package:arre_frontend_flutter/screens/playlist/playlist.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/screens/share_tray_sheet.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/widgets/action_sheet_common.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_gradient_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/arre_persistent_pinned_header.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_frontend_flutter/widgets/drag_indicator.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/share_as_clip.dart';
import 'package:arre_frontend_flutter/widgets/shimmer_voicepod_card.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/post_liked_users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../../models/src/post.dart';
import '../../providers/video_player_provider.dart';
import '../../screens/downloded_voicepods_screen.dart';
import '../../screens/report_screens/report_screen.dart';
import '../../utils/Firebase Analytics/firebase_analytics_service.dart';

part 'voicepod_actions.dart';

part 'share_sheet.dart';

part 'package:arre_frontend_flutter/screens/voicepod_detail_screen.dart';

part 'voicepod_embed.dart';

part 'package:arre_frontend_flutter/screens/voicepod_comment_sheet.dart';

part 'after_creation_cta.dart';

part 'download_dailog.dart';

const _LOG = "VOICEPOD_CARD";

const kVoicepodCardMargin = const EdgeInsets.fromLTRB(16, 4, 16, 4);

const kVoicepodPlaySize = Size.square(66);

final _showPostTimestampProvider = Provider<bool>((ref) {
  return RemoteConfigManager.instance.shouldShowPostTimestamp();
});

class VoicepodPostCard extends ConsumerStatefulWidget {
  final String postId;
  final Post? postDetails;
  final void Function(String postId) onPlayPressed;

  const VoicepodPostCard(
    this.postId, {
    Key? key,
    this.postDetails,
    required this.onPlayPressed,
  }) : super(key: key);

  @override
  ConsumerState<VoicepodPostCard> createState() => _VoicepodPostCardState();
}

class _VoicepodPostCardState extends ConsumerState<VoicepodPostCard> {
  @override
  void initState() {
    super.initState();
    if (widget.postDetails != null) {
      ref.read(postDataProvider).setData(widget.postDetails!);
    } else {
      ref.read(postDataProvider).fetchData(widget.postId);
    }
    ref.read(userPostRelationsProvider).fetchData(widget.postId);
  }

  String get postId => widget.postId;

  @override
  Widget build(BuildContext context) {
    final postDataSelector = <T>(T Function(PostDataProvider value) selector) {
      return ref.watch(postDataProvider.select(selector));
    };
    Widget child;
    if (postDataSelector((_) => _.hasData(postId))) {
      final postData = postDataSelector((_) => _.getData(postId)!);
      child = VisibilityDetector(
        onVisibilityChanged: PostVisibilityProvider.instance.setVisibilityInfo,
        key: ValueKey(PostVisibilityKey.fromPostData(postData)),
        child: _VoicepodCardBody(
          post: postData,
          onPlayPressed: widget.onPlayPressed,
        ),
      );
    } else if (postDataSelector((_) => _.isLoading(postId))) {
      child = const ShimmerVoicepodCard();
    } else {
      child = SizedBox();
    }

    return child;
  }
}

class _VoicepodCardBody extends ConsumerWidget {
  final void Function(String postId) onPlayPressed;
  final Post post;

  const _VoicepodCardBody({
    Key? key,
    required this.post,
    required this.onPlayPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playButton = _VPPlayer(post, onPlayPressed: onPlayPressed);

    final attachmentMedia = _PodEmbedWidget(post);

    final title = Padding(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: ExpandableText(
        post.title,
        expandText: "see more",
        animation: true,
        maxLines: 4,
        style: ATextStyles.user16Regular(AColors.white),
        linkStyle: ATextStyles.user12Regular(AColors.textLight),
        hashtagStyle: ATextStyles.user16Regular(AColors.tealPrimary),
        onHashtagTap: (tag) {},
      ),
    );

    final bottomActionBar = ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width -
            kVoicepodPlaySize.width -
            kVoicepodCardMargin.horizontal,
        minHeight: 40,
        maxHeight: 40,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: _BottomActionsBar(post: post),
      ),
    );

    List<Widget> countWidgets = [
      if (post.likeCount > 0)
        _TextCountButton(
          count: post.likeCount,
          label: post.likeCount.getLabel(
            zero: "Likes",
            one: "Like",
            many: "Likes",
          ),
          onPressed: () {
            arreAnalytics.logEvent(
              GAEvent.VP_LIKES_NUMBER_CLICK,
              parameters: {EventAttribute.POST_ID: post.postId},
            );
            showPostLikedUsersSheet(post.postId);
          },
        ),
      if (post.commentCount > 0)
        _TextCountButton(
          count: post.commentCount,
          label: post.commentCount.getLabel(
            zero: "Comments",
            one: "Comment",
            many: "Comments",
          ),
          onPressed: () {
            arreAnalytics.logEvent(
              GAEvent.VP_COMMENTS_NUMBER_CLICK,
              parameters: {EventAttribute.POST_ID: post.postId},
            );
            _showCommentBottomSheet(ref, post: post);
          },
        ),
      if (post.impressionCount != null)
        _TextCountButton(
          count: math.max(post.impressionCount!, 1),
          label: math.max(post.impressionCount!, 1).getLabel(
                zero: "Views",
                one: "View",
                many: "Views",
              ),
          onPressed: null,
        ),
    ];

    final likesAndComments = Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: countWidgets.joinSeparator(Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Icon(Icons.lens, size: 4, color: AColors.greyDark),
        )),
      ),
    );

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: AColors.BgStroke.withOpacity(0.2)),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      color: AColors.BgLight,
      // shadowColor: Color(0xFFDBF2EF),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          arreAnalytics.logEvent(
            GAEvent.VP_CARD_CLICK,
            parameters: {EventAttribute.POST_ID: post.postId},
          );
          ArreNavigator.instance
              .push(AAppPage(child: VoicepodDetailScreen(postId: post.postId)));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _TopBar(
              post: post,
              showTimestamp: ref.read(_showPostTimestampProvider),
            ),
            if (post.hasAnyMedia) ...[
              Row(
                children: [
                  Expanded(child: title),
                  playButton,
                ],
              ),
              attachmentMedia,
              SizedBox(height: 8),
              likesAndComments,
            ] else ...[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [title, likesAndComments],
                    ),
                  ),
                  playButton
                ],
              )
            ],
            bottomActionBar,
            SizedBox(height: 4),
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
    this.padding = const EdgeInsets.fromLTRB(10, 10, 10, 0),
  }) : super(key: key);

  @override
  ConsumerState createState() => __TopBarState();
}

class __TopBarState extends ConsumerState<_TopBar> {
  @override
  void initState() {
    super.initState();
    // ref.read(userShortDataProvider).fetchData(widget.post.userId);
  }

  @override
  Widget build(BuildContext context) {
    final post = widget.post;
    Widget postPrivacy;
    final openProfileScreen = () {
      arreAnalytics.logEvent(
        GAEvent.VP_USER_CLICK,
        parameters: {EventAttribute.USER_ID: widget.post.userId},
      );
      ArreNavigator.instance
          .push(AAppPage(child: ProfileScreen(userId: post.userId)));
    };
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
        fontFamily: 'Acumin Pro',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        // height: 2,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );

    if (post.isPrivate) {
      postPrivacy = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            ArreIconsV2.private_filled,
            size: 12,
            color: Colors.white,
          ),
          SizedBox(width: 2),
          Text(
            "Only me",
            style: ATextStyles.sys12Mini(Color(0xFFBDCAC9)),
          )
        ],
      );
    } else if (post.communityId.isValid) {
      final name =
          ref.watch(communityNameProvider(post.communityId ?? "")).valueOrNull;
      postPrivacy = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            ArreIconsV2.users,
            size: 14,
            color: Colors.white,
          ),
          SizedBox(width: 2),
          Flexible(
            child: Text(
              name ?? "Community",
              style: ATextStyles.sys12Mini(Color(0xFFBDCAC9)),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      );
    } else {
      postPrivacy = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            ArreIconsV2.public_filled,
            size: 12,
            color: Colors.white,
          ),
          SizedBox(width: 4),
          Text(
            "Public",
            style: ATextStyles.sys12Mini(Color(0xFFBDCAC9)),
          )
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: openProfileScreen,
          child: Padding(
            padding: widget.padding,
            child: UserAvatarV2(
              mediaId: profilePictureMediaId,
              userName: username,
              size: widget.avatarSize,
              // borderColor: AColors.tealPrimary,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: widget.padding.top),
              GestureDetector(
                onTap: openProfileScreen,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: usernameWidget,
                ),
              ),
              SizedBox(
                height: 18,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    if (widget.showTimestamp) ...[
                      Text(
                        Utils.relativeTime(post.createdAtDateTime),
                        style: ATextStyles.sys12Mini(Color(0xFFBDCAC9)),
                      ),
                      SizedBox(width: 4),
                      Icon(ArreIconsV2.lens, size: 3, color: Color(0xFFBDCAC9)),
                      SizedBox(width: 6),
                    ],
                    Flexible(child: postPrivacy),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
        _FollowButton(
          userId: post.userId,
          postId: post.postId,
        ),
        SizedBox(width: 4),
        IconButton(
          iconSize: 16,
          splashRadius: 18,
          padding: EdgeInsets.fromLTRB(4, 4, 12, 4),
          constraints: BoxConstraints.tight(Size.square(42)),
          onPressed: () => _showActionsSheet(ref, post),
          icon: Icon(
            ArreIconsV2.kebeb_filled,
            color: AColors.greyMedium,
            size: 16,
          ),
        ),
      ],
    );
  }
}

class _FollowButton extends ConsumerStatefulWidget {
  final String userId;
  final String postId;

  const _FollowButton({
    Key? key,
    required this.userId,
    required this.postId,
  }) : super(key: key);

  @override
  ConsumerState createState() => __FollowButtonState();
}

class __FollowButtonState extends ConsumerState<_FollowButton> {
  @override
  void initState() {
    super.initState();
    ref.read(followStatusProvider).fetchData(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    Widget? child;
    ButtonStyle? style;
    var status = ref.watch(
        followStatusProvider.select((value) => value.getStatus(widget.userId)));
    final currentUserId = ref.watch(currentUserProvider).userId;
    if (widget.userId == currentUserId) {
      return const SizedBox();
    }
    switch (status) {
      case FollowStatus.isFollowing:
        child = Icon(
          ArreIconsV2.tick_outline,
          size: 12,
          color: Color(0xFFB1B8B6),
        );
        style = ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          alignment: Alignment.center,
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontFamily: 'Acumin Pro',
              fontWeight: FontWeight.w400,
              color: Color(0xFF4BC7B6),
              fontSize: 11,
              height: 16 / 11,
            ),
          ),
          shape: MaterialStatePropertyAll(CircleBorder()),
          visualDensity: VisualDensity(horizontal: 1, vertical: 0.5),
          side: MaterialStatePropertyAll(BorderSide(color: Color(0xFFB1B8B6))),
          padding:
              MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 4)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(Size(18, 18)),
        );
        break;
      case FollowStatus.notFollowing:
        child = Text("Follow");
        style = ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          alignment: Alignment.center,
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontFamily: 'Acumin Pro',
              fontWeight: FontWeight.w400,
              color: Color(0xFF4BC7B6),
              fontSize: 11,
              height: 16 / 11,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          visualDensity: VisualDensity(horizontal: 1, vertical: 0.5),
          side: MaterialStatePropertyAll(BorderSide(color: AColors.tealStroke)),
          padding:
              MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 12)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(Size(50, 23)),
        );
        break;

      case FollowStatus.wasFollowing:
        child = Icon(
          ArreIconsV2.audio_message_outline,
          size: 24,
          color: Color(0xFFB1B8B6),
        );
        style = ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          alignment: Alignment.center,
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontFamily: 'Acumin Pro',
              fontWeight: FontWeight.w400,
              color: Color(0xFF4BC7B6),
              fontSize: 11,
              height: 16 / 11,
            ),
          ),
          shape: MaterialStatePropertyAll(CircleBorder()),
          visualDensity: VisualDensity(horizontal: 0, vertical: 0.5),
          side: MaterialStatePropertyAll(BorderSide.none),
          padding:
              MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 4)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(Size(18, 18)),
        );
      default:
        child = null;
    }
    if (child != null) {
      child = OutlinedButton(
        style: style,
        onPressed: () async {
          if (status == FollowStatus.wasFollowing) {
            final conversationId = await Utils.getConversationId(widget.userId);
            arreAnalytics.logEvent(
              GAEvent.VOICE_DM_BTN_CLICK,
              parameters: {
                EventAttribute.ENTITY_ID: conversationId,
                EventAttribute.ENTITY_TYPE: "conversation",
                EventAttribute.GA_CONTEXT: GAContext.voicepod_card.name
              },
            );
            ArreNavigator.instance.push(AAppPage(
                child: MessagesScreen(conversationId: conversationId)));
          } else if (status!.following) {
            arreAnalytics.logEvent(
              GAEvent.UNFOLLOW_USER,
              parameters: {
                EventAttribute.USER_ID: widget.userId,
                EventAttribute.GA_CONTEXT: GAContext.voicepod_card.name,
              },
            );
            ProfileAction.unFollowUser(ref, widget.userId);
          } else {
            arreAnalytics.logEvent(
              GAEvent.FOLLOW_USER,
              parameters: {
                EventAttribute.USER_ID: widget.userId,
                EventAttribute.GA_CONTEXT: GAContext.voicepod_card.name,
              },
            );
            ProfileAction.followUser(ref, widget.userId);
          }
        },
        child: child,
      );
    }
    return child ?? SizedBox();
  }
}

class _VPPlayer extends ConsumerWidget {
  final Post post;
  final void Function(String postId) onPlayPressed;

  const _VPPlayer(
    this.post, {
    Key? key,
    required this.onPlayPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          StreamBuilder(
            stream: PodPlayerV3.instance.activePod,
            builder: (context, snapshot) {
              Widget playButton;
              if (snapshot.data?.entityId == post.postId) {
                playButton = AudioPlayerButtonState.gradient(
                  player: PodPlayerV3.instance,
                  size: 36,
                  iconSize: 20,
                  gaContext: PlayerGAContext.voicepod_card,
                  animatePlaying: true,
                );
              } else {
                playButton = ArreGradientIconButton(
                  icon: Icon(
                    ArreIconsV2.play_filled,
                    size: 20,
                    color: AColors.white,
                  ),
                  onPressed: () => onPlayPressed(post.postId),
                );
              }
              return playButton;
            },
          ),
          SizedBox(width: 8),
          Tooltip(
            message: '${post.playCount.formatWithCommas}',
            child: RichText(
              text: TextSpan(
                text: "${post.playCount.shortify}",
                style: ATextStyles.user12Bold(AColors.textMedium),
                children: [
                  TextSpan(
                    text: " plays",
                    style: ATextStyles.sys12Mini(AColors.textMedium),
                  ),
                ],
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomActionsBar extends ConsumerWidget {
  final Post post;
  final MainAxisAlignment mainAxisAlignment;

  const _BottomActionsBar({
    Key? key,
    required this.post,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  String get postId => post.postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasLiked = ref.watch(
        userPostRelationsProvider.select((value) => value.hasLiked(postId)));
    final hasCommented = ref.watch(userPostRelationsProvider
        .select((value) => value.hasCommented(postId)));
    final iconColor = AColors.greyLight;
    return TextButtonTheme(
      data: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Color(0xFFB1B8B6)),
        ),
      ),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          IconButton(
            iconSize: 24,
            splashRadius: 18,
            color: iconColor,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(Size(42, 56)),
            onPressed: () {
              final event = hasLiked == true
                  ? GAEvent.VP_UNLIKE_ICON_CLICK
                  : GAEvent.VP_LIKE_ICON_CLICK;
              arreAnalytics.logEvent(
                event,
                parameters: {EventAttribute.POST_ID: postId},
              );
              VoicepodAction.applyLikeUnlike(ref, postId);
            },
            icon: hasLiked == true
                ? Icon(
                    ArreIconsV2.heart_filled,
                    color: AColors.orangePrimary,
                    size: 24,
                  )
                : Icon(
                    ArreIconsV2.heart_outline,
                    color: iconColor,
                    size: 24,
                  ),
          ),
          IconButton(
            iconSize: 24,
            splashRadius: 18,
            color: iconColor,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(Size(42, 56)),
            onPressed: () {
              arreAnalytics.logEvent(
                GAEvent.VP_COMMENT_ICON_CLICK,
                parameters: {EventAttribute.POST_ID: post.postId},
              );
              _showCommentBottomSheet(ref, post: post, autoFocus: true);
            },
            icon: hasCommented == true
                ? Icon(
                    ArreIconsV2.message_filled,
                    color: AColors.orangePrimary,
                    size: 24,
                  )
                : Icon(
                    ArreIconsV2.message_outline,
                    color: iconColor,
                    size: 24,
                  ),
          ),
          IconButton(
            iconSize: 24,
            splashRadius: 18,
            color: iconColor,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(Size(42, 56)),
            onPressed: () {
              arreAnalytics.logEvent(
                GAEvent.VP_SAVE_ICON_CLICK,
                parameters: {EventAttribute.POST_ID: postId},
              );
              _performPostAction(
                ref,
                action: _PostActionsEnum.save,
                voicepod: post,
              );
            },
            icon: Icon(ArreIconsV2.save_outline),
          ),
          IconButton(
            iconSize: 24,
            splashRadius: 18,
            color: iconColor,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints.tight(Size(42, 56)),
            onPressed: () {
              arreAnalytics.logEvent(
                GAEvent.VP_SHARE_ICON_CLICK,
                parameters: {EventAttribute.POST_ID: postId},
              );
              _showShareSheet(ref, post);
            },
            icon: Icon(ArreIconsV2.share_outline),
          ),
        ],
      ),
    );
  }
}

class _TextCountButton extends StatelessWidget {
  final int count;
  final String label;
  final VoidCallback? onPressed;

  const _TextCountButton({
    required this.count,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: count.formatWithCommas,
      child: CupertinoButton(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        minSize: 24,
        child: Text.rich(TextSpan(children: [
          TextSpan(
            text: count.shortify,
            style: ATextStyles.sys12Bold(AColors.textMedium),
          ),
          TextSpan(
            text: " ",
            style: ATextStyles.sys14Bold(AColors.textMedium),
          ),
          TextSpan(
            text: label,
            style: ATextStyles.sys12Regular(AColors.textMedium),
          ),
        ])),
        onPressed: onPressed,
      ),
    );
  }
}

class _TextCountButtonBig extends StatelessWidget {
  final int count;
  final String label;
  final VoidCallback? onPressed;

  const _TextCountButtonBig({
    required this.count,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: count.formatWithCommas,
      child: CupertinoButton(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        minSize: 24,
        child: Text.rich(TextSpan(children: [
          TextSpan(
            text: count.shortify,
            style: ATextStyles.sys14Bold(AColors.textMedium),
          ),
          TextSpan(
            text: " ",
            style: ATextStyles.sys14Bold(AColors.textMedium),
          ),
          TextSpan(
            text: label,
            style: ATextStyles.sys14Regular(AColors.textMedium),
          ),
        ])),
        onPressed: onPressed,
      ),
    );
  }
}
