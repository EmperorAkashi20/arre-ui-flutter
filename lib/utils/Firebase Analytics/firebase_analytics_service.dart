//*This file is used for writing the code for the Firebase Analytics Service.
//*Includes a singleton, with all the methods that will be used in the app related to firebase analytics.
//*Run the command "adb shell setprop debug.firebase.analytics.app com.arre.voice" so that the app starts showing debug analytics data as well.

import 'dart:developer';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:singular_flutter_sdk/singular.dart';
import 'package:facebook_app_events/facebook_app_events.dart'
    as facebook_events;

enum GAContext {
  voicepod_card,
  profile_screen,
  conversation_tile,
  user_list_tile,
  suggested_user_card,
}

enum PlayerGAContext {
  pod_player_bar,

  ///Current playlist bottom sheet
  current_playlist,
  voicepod_card,
  voicepod_story_card,
  voicepod_details,
  cs_audio_insertable,
  cs_preview,
  cs_voice_effect,
  cs_bg_music,
  system_notification,
  cs_draft,
  auto_play,
  skip_to_next_or_prev,
  voice_bio,
  playlist_thumbnail_play_btn,
  playlist_tile_play_btn,
  playlist_play_all_btn,

  ///Use-case the pod is paused when a post video is unmuted
  mute,
  ignore,
  voice_message_draft,
  voice_dm,
}

enum EntityType {
  bg_music,
  voice_filter,
  playlist,
  user,
  hashtag,
  voicepod,
  insertable,
  language,
  mood,
  voiceclub,
  vc_chats
}

enum PodSourceEntity {
  arre_curated_playlist,
  playlist,
  user,
  hashtagList,
  voicepod_details,
  voice_bio,
  similar_voicepods,
  voicepods_from_same_creator,
  voiceclub_feed,
  demo_voicepods,
  voicepods_story
}

class GAEvent {
  String event;
  String? userType;
  String? entityId;
  String? entityType;
  String? eventValue;
  String? context;

  GAEvent(
    this.event, {
    this.userType,
    this.entityId,
    this.entityType,
    this.eventValue,
    this.context,
  });

  void log() {
    arreAnalytics.logEvent(
      event,
      parameters: {
        EventAttribute.USER_TYPE: userType,
        EventAttribute.ENTITY_ID: entityId,
        EventAttribute.ENTITY_TYPE: entityType,
        EventAttribute.EVENT_VALUE: eventValue,
        EventAttribute.GA_CONTEXT: context,
      },
    );
  }

  static const EXPAND_TRIBE_INVITE_LINK_COPY_CLICK =
      'expand_tribe_invite_link_copy_click';
  static const EXPAND_TRIBE_INVITE_LINK_SHARE_CLICK =
      'expand_tribe_invite_link_share_click';
  static const EXPAND_TRIBE_REQUEST_INVITES_CLICK =
      'expand_tribe_request_invites_click';

  ///User clicks on the voicepod like icon button
  static const VP_LIKE_ICON_CLICK = 'vp_like_icon_click';

  ///User clicks on the voicepod unlike icon button
  static const VP_UNLIKE_ICON_CLICK = 'vp_unlike_icon_click';

  ///User clicks on the voicepod share icon button
  static const VP_SHARE_ICON_CLICK = 'vp_share_icon_click';

  ///User clicks on the Voicepod comment icon button
  static const VP_COMMENT_ICON_CLICK = 'vp_comment_icon_click';

  ///User clicks on the voicepod comment number text button
  static const VP_COMMENTS_NUMBER_CLICK = 'vp_comments_number_click';

  ///User clicks on the voicepod comment number text button
  static const VP_LIKES_NUMBER_CLICK = 'vp_likes_number_click';

  ///User clicks on the Voicepod save icon button
  static const VP_SAVE_ICON_CLICK = 'vp_save_icon_click';

  ///User clicks on the DM icon button
  ///
  /// Context: Voicepod card, profile screen, user list tile
  static const VOICE_DM_BTN_CLICK = 'voice_dm_btn_click';

  ///When Share tray is opened
  ///
  /// params: [EventAttribute.ENTITY_TYPE], [EventAttribute.ENTITY_ID],
  static const SHARE_AS_MESSAGE_BTN_CLICK = "share_as_message_btn_click";

  ///User clicks on send button on share tray sheet
  /// params: [EventAttribute.ENTITY_TYPE], [EventAttribute.ENTITY_ID],
  static const SHARE_AS_MESSAGE_SEND_BTN_CLICK =
      "share_as_message_send_btn_click";

  ///User selects other users to send message
  ///
  /// param - [EventAttribute.EVENT_COUNT] - number of users selected
  static const SHARE_TRAY_USER_SELECTED = "share_tray_user_selected";

  ///User Sends the message successfully
  ///
  /// param - [EventAttribute.EVENT_COUNT] - number of users selected
  static const SHARE_AS_MESSAGE_SENT = "share_as_message_sent";

  ///When user blocks other user
  static const BLOCK_USER = "block_user";

  //When user un blocks other user
  static const UNBLOCK_USER = "unblock_user";

  ///User clicks on the Block button of request actions
  static const DM_REQUEST_BLOCK = "dm_request_block";

  ///User clicks on the delete button of request actions
  static const DM_REQUEST_DELETE = "dm_request_delete";

  ///User clicks on the accept button of request actions
  static const DM_REQUEST_ACCEPT = "dm_request_accept";

  ///User clicks on the voicepod creator's avatar/username
  static const VP_USER_CLICK = 'vp_user_click';

  ///User clicks on the voicepod card to see it's details and comments
  static const VP_CARD_CLICK = 'vp_card_click';

  ///User clicks on follow button
  ///
  /// Parameters:
  ///   1. [EventAttribute.GA_CONTEXT] - Pass one of the enum's [GAContext] value name
  ///   2. [EventAttribute.USER_ID] - The ID of user who is being followed
  static const FOLLOW_USER = 'follow_user';

  ///User clicks on follow button
  ///
  /// Parameters:
  ///   1. [EventAttribute.GA_CONTEXT] - Pass one of the enum's [GAContext] value name
  ///   2. [EventAttribute.USER_ID] - The ID of user who is being followed
  static const UNFOLLOW_USER = 'unfollow_user';

  ///When user clicks on the creator analytics icon button in profile screen
  static const CREATOR_ANALYTICS_ICON_CLICK = 'creator_analytics_icon_click';

  static const LOG_APP_OPEN = 'app_opened';
  static const LOG_PLATFORM_DETAILS = 'platform_details';

  static const CREATE_NEW_VOICEPOD_BTN_CLICK = 'create_new_voicepod_btn_click';
  static const CS_DRAFT_LIST_PREVIEW_BTN_TAP = 'draftlist_previewbutton_click';

  ///When user selects draft to continue creating draft
  static const CS_INSERTIBLES_ADDED = 'recordscreen_insertibles_added';
  static const CS_VOICEPOD_POST_SUCCESS = 'voicepod_post_success_message_sent';
  static const CS_DRAFT_BTN_TAP = 'cs_draft_btn_tap';

  ////   ************************** SIMPLE PLAYER EVENTS **************************   ////

  ///Simple player play
  ///
  /// context
  static const APP_PLAYER_PLAY = "app_player_play";

  ///Simple player pause
  ///
  /// context
  static const APP_PLAYER_PAUSE = "app_player_pause";

  ///Simple player switch speed
  ///
  /// context
  static const APP_PLAYER_SWITCH_SPEED = "app_player_switch_speed";

  ////   ************************** CREATOR STUDIO EVENTS **************************   ////

  ///When user clicks on Create Vociepod button either from Home screen or Voiceclub screen or anywhere
  ///
  static const CREATE_VOICEPOD_BTN_TAP = 'create_voicepod_btn_tap';

  ///User clicks on Quick mode
  static const CS_QUICK_MODE_TAP = "cs_quick_mode_tap";

  ///User clicks on Pro mode
  static const CS_PRO_MODE_TAP = "cs_pro_mode_tap";

  ///User clicks on Import music option
  static const CS_IMPORT_MUSIC_TAP = "cs_import_music_tap";

  ///System triggered when imported music exceeds the max pod duration or remaining duration
  static const CS_IMPORT_MUSIC_EXCEEDS_LIMIT = "cs_import_music_exceeds_limit";

  ///User clicks on Sounds/Insertables option
  static const CS_ADD_SOUNDS_TAP = "cs_add_sounds_tap";

  ///User clicks on any of the Sounds and adds
  static const CS_SOUNDS_ADDED = "cs_sounds_added";

  ///User clicks on Voice filter option
  static const CS_VOICE_FILTER_TAP = "cs_voice_filter_tap";

  ///User clicks on the BG Music option
  static const CS_BG_MUSIC_TAP = "cs_bg_music_tap";

  ///User clicks on Record Icon button
  static const CS_START_RECORD_BTN_TAP = "cs_start_record_btn_tap";

  ///User clicks on Pause record Icon button
  static const CS_PAUSE_RECORD_BTN_TAP = "cs_pause_record_btn_tap";

  ///System triggered when user continues to record even after max duration of the pod
  static const CS_TIMEOUT_AUTO_PAUSE_ACTIVITY =
      "cs_timeout_auto_pause_activity";

  ///User clicks on Restart button
  static const CS_RESTART_TAP = "cs_restart_tap";

  ///User confirms restarting the recording
  ///
  /// Param
  /// context:  discard_and_restart, save_and_restart
  static const CS_RESTART_CONFIRMED = "cs_restart_confirmed";

  ///User clicks on the Preview button
  static const CS_PREVIEW_TAP = "cs_preview_tap";

  ///User clicks on the Preview stop button
  static const CS_STOP_PREVIEW_TAP = "cs_stop_preview_tap";

  // ///User clicks on the play button of preview controls
  // static const CS_PREVIEW_PLAY_TAP = "cs_preview_play_tap";
  //
  // ///User clicks on the pause button of preview controls
  // static const CS_PREVIEW_PAUSE_TAP = "cs_preview_pause_tap";
  //
  // ///User clicks on the speed button of preview controls
  // static const CS_PREVIEW_SPEED_TAP = "cs_preview_speed_tap";

  ///User clicks on the skip button (seek to zero duration or beginning) of preview controls
  static const CS_PREVIEW_SEEK_TAP = "cs_preview_seek_tap";

  ///User clicks on the Media attach icon button
  static const CS_MEDIA_ATTACH_TAP = "cs_media_attach_tap";

  ///Media is cropped to required aspect ratio attached
  static const CS_MEDIA_ATTACHED = "cs_media_attached";

  ///User clicks on the attached media
  static const CS_MEDIA_IMAGE_TAP = "cs_media_image_tap";

  ///User clicks on the Cross button to remove the attached media
  static const CS_MEDIA_REMOVE_TAP = "cs_media_remove_tap";

  ///User clicks on the edit button on Media
  static const CS_MEDIA_EDIT_TAP = "cs_media_edit_tap";

  ///User clicks on the dropdown button "Posting to"
  static const CS_PRIVACY_DROPDOWN_TAP = "cs_privacy_dropdown_tap";

  ///User changes the community privacy change. Clicks on the switch button
  static const CS_COMMUNITY_PRIVACY_SWITCH = "cs_community_privacy_switch";

  ///User clicks on the language dropdown button
  static const CS_LANGUAGE_DROPDOWN_TAP = "cs_language_dropdown_tap";

  ///User clicks on the Post button
  static const CS_POST_TAP = "cs_post_tap";

  ///System triggered when Posting is successful
  static const CS_POST_SUCCESSFUL = "cs_post_successful";

  ///System triggered when posting fails
  static const CS_POST_FAILED = "cs_post_failed";

  ///User previews the voice filter by clicking on voice filter list tile
  ///
  ///entity_type : voice_filter
  ///entity_id : Voice Filter ID
  static const CS_VOICE_FILTER_PLAY = "cs_voice_filter_play";

  ///User applies the voice filter by clicking on Apply button
  ///
  ///entity_type : voice_filter
  ///entity_id : Voice Filter ID
  static const CS_VOICE_FILTER_APPLY = "cs_voice_filter_apply";

  ///User removes the Voice filter by clicking on Cross button
  ///
  ///entity_type : voice_filter
  ///entity_id : Voice Filter ID
  static const CS_VOICE_FILTER_REMOVE = "cs_voice_filter_remove";

  ///User previews the BG Music by clicking on voice filter list tile
  ///
  ///entity_type : bg_music
  ///entity_id : BG Music ID
  static const CS_BG_MUSIC_PLAY = "cs_bg_music_play";

  ///User applies the BG Music by clicking on Apply button
  ///
  ///entity_type : bg_music
  ///entity_id : BG Music ID
  static const CS_BG_MUSIC_APPLY = "cs_bg_music_apply";

  ///User removes the BG Music by clicking on Cross button
  ///
  ///entity_type : bg_music
  ///entity_id : BG Music ID
  static const CS_BG_MUSIC_REMOVE = "cs_bg_music_remove";

  ///User changes the bg volume level
  ///
  ///event_count : volume level
  ///entity_type : bg_music
  ///entity_id : BG Music ID
  static const CS_BG_VOLUME_CHANGED = "cs_bg_volume_changed";

  ///User deletes recorded clip or imported clip or sounds
  static const CS_DELETE_ACTIVITY = "cs_delete_activity";

  ///User clicks on the profile tab icon in the Home Bottom navigation bar
  static const MYSPACE_BUTTON_NAV_CLICKED = 'myspace_button_nav_clicked';

  static const MYSPACE_THREEDOT_MENU_BUTTON_CLICKED =
      'myspace_3dotmenu_button_clicked';
  static const MYSPACE_SETTINGS_BUTTON_CLICKED =
      'myspace_settings_button_clicked';
  static const HELP_CENTER_BUTTON_CLICKED = 'help_centre_button-clicked';
  static const DEACTIVATE_OPTION_BUTTON_CLICK =
      'deactivate_option_button_clicked';
  static const DEACTIVATE_ACCOUNT_BUTTON_CLICKED =
      'deactivate_account_button_clicked';
  static const DELETE_ACCOUNT_OPTION_CLICKED = 'delete_account_option_clicked';
  static const DELETE_ACCOUNT_BUTTON_CLICKED = 'delete_account_button_clicked';
  static const LOGOUT_BUTTON_CLICKED = 'logout_button_clicked';
  static const VERSION_BUTTON_CLICKED = 'version_button_clicked';
  static const SELF_FOLLOWER_LIST_BUTTON_CLICKED =
      'self_followerlist_button_clicked';
  static const SELF_FOLLOWING_LIST_BUTTON_CLICKED =
      'self_followinglist_button_clicked';
  static const OTHERS_FOLLOWER_LIST_BUTTON_CLICKED =
      'others_followerlist_button_clicked';
  static const OTHERS_FOLLOWING_LIST_BUTTON_CLICKED =
      'others_followinglist_button_clicked';
  static const EDIT_BUTTON_CLICKED = "edit_button_clicked";
  static const DISPLAY_PICTURE_CLICKED = "display_picture_clicked";
  static const POD_SWIPE_GESTURE = 'pod_swipe_gesture';
  static const POD_PLAYER_BAR_CLICKED = 'pod_player_bar_clicked';
  static const POD_DISMISSED = 'pod_dismissed';

  static const CP_POD_OPEN_DETAILS = 'cp_pod_open_details';
  static const PROFILE_PICTURE_VIEWED = 'profile_picture_viewed';

  static const SEARCH_BAR_CLICKED = 'Search_bar_clicked';

  ///Event params
  ///- played_duration_in_sec
  ///- played_percent: 0-100
  static const POD_PLAY_END = "pod_play_end";

  ///Event params
  ///- context: screen's name, system_notification,
  static const POD_PLAY = "pod_play";

  ///User changes the speed of the pod
  static const POD_SPEED = 'pod_speed';

  ///Event params
  ///- context: system_notification, player_bar_pause_button
  static const POD_PAUSE = "pod_pause";

  ///Event params
  ///- context: system_notification, player_bar_swipe/player_bar_next_button
  static const POD_PLAY_NEXT = "pod_play_next";

  ///Event params
  ///- context: system_notification, player_bar_swipe
  static const POD_PLAY_PREVIOUS = "pod_play_previous";

  ///Fire this in [Utils.share]
  static const TRACK_ENTITY_SHARE = "track_entity_share";

  ///Fire this when user clicks on Share as clip button
  ///
  /// This is to know how many users are interested in sharing pod as video
  static const SHARE_POD_AS_VIDEO_BTN_CLICK = "share_pod_as_video_btn_click";
  static const SHARE_POD_LINK_BTN_CLICK = "share_pod_link_btn_click";

  ///User clicks on the "upload button" to upload the profile picture after selecting the picture in the pricture_upload screen
  static const PICTURE_UPLOAD_BUTTON_CLICKED = "picture_upload_button_clicked";

  ///User clicks on the cross to discard the uploaded display picture
  static const PROFILE_COMPLETION_PAGE_DP_DISCARDED =
      "profile_completion_page_dp_discarded";

  ///User click on the mic in the audio bio recording page	User click on the mic in the audio bio recording page
  static const AUDIO_BIO_RECCORDING_MIC_CLICKED =
      "audio_bio_reccording_mic_clicked";

  ///User click on the pause button in the audio bio recording page	User click on the pause button in the audio bio recording page
  static const AUDIO_BIO_RECCORDING_PAUSE_CLICKED =
      "audio_bio_reccording_pause_clicked";

  ///User click on the play button in the audio bio recording page to listen after recording the audio bio	User click on the play button in the audio bio recording page to listen after recording the audio bio
  static const AUDIO_BIO_RECCORDING_PLAY_CLICKED =
      "audio_bio_reccording_play_clicked";

  ///User click on the save button in the audio bio recording page to save after recording the audio bio	User click on the save button in the audio bio recording page to save after recording the audio bio
  static const AUDIO_BIO_RECCORDING_SAVE_CLICKED =
      "audio_bio_reccording_save_clicked";

  ///User click on the reset button in the audio bio recording page to re-record the audio bio	User click on the reset button in the audio bio recording page to re-record the audio bio
  static const AUDIO_BIO_RECCORDING_RESET_CLICKED =
      "audio_bio_reccording_reset_clicked";

  ///User click on the delete button in the audio bio recording page to delete the audio bio	User click on the delete button in the audio bio recording page to delete the audio bio
  static const AUDIO_BIO_RECCORDING_DELETE_CLICKED =
      "audio_bio_reccording_delete_clicked";

  ///User click on the "Yes, delete it"  button after they have clicked delete button to delte the audio bio	User click on the "Yes, delete it"  button after they have clicked delete button to delte the audio bio
  static const AUDIO_BIO_RECORDING_CONFIRM_DELETE_CLICK =
      "audio_bio_recording_confirm_delete_click";

  ///When profile changes are being submitted
  static const PROFILE_CHANGES_SUBMITTING = "profile_changes_submitting";

  ///After successful submition of profile changes
  static const PROFILE_CHANGES_SUBMIT_SUCCESS =
      "profile_changes_submit_success";

  ///When there's an error submitting the profile changes
  static const PROFILE_CHANGES_SUBMIT_FAILED = "profile_changes_submit_failed";

  ///When user see the Dialog `ProfileReviewPendingAnimationScreen`
  static const PROFILE_IN_REVIEW_ANIM_PAGE = "profile_in_review_anim_page";

  ///User tries to leave the profile completion journey midway	User tries to leave the profile completion journey midway
  static const PROFILE_COMPLETION_PAGE_LEAVING_POP_UP =
      "profile_completion_page_leaving_pop_up";

  ///User clicks on the leave button in the exit popup	User clicks on the leave button in the exit popup
  static const EXIT_POP_UP_LEAVE_BUTTON_CLICKED =
      "exit_pop_up_leave_button_clicked";

  ///Fire this when user see a Wohoo animation [Profile verified animation Dialog]
  static const ACCOUNT_VERIFIED = "account_verified";

  static const DISMISSED_FINISH_PROFILE_NUDGE =
      "dismissed_finish_profile_nudge";

  ///When user clicks on the voicepod likes number to see liked users list
  ///
  /// Parameters:
  ///   1. post_id - Post ID
  ///   2. event_count - Likes count of the post
  static const POST_LIKED_USERS_SHEET_VIEW = "post_liked_users_sheet_view";

  ///User clicks on the `Edit Profile` after signup
  static const EDIT_PROFILE_AFTER_SIGN_UP = "edit_profile_after_sign_up";

  ///User clicks on the `I'll do it later` after signup or ignores the bottom sheet
  static const IGNORE_EDIT_PROFILE_AFTER_SIGN_UP =
      "ignore_edit_profile_after_sign_up";

  ///When user selects languages and submits
  static const LANGUAGES_SELECTED = "languages_selected";

  ///When user clicks on profile complete nudge
  ///
  /// Pass [EventAttribute.GA_CONTEXT] as well: after_voicepod_creation, analytics_screen, profile_screen
  static const PROFILE_COMPLETE_NUDGE_CLICK = "profile_complete_nudge_click";

  ///When user selects the topic from topics section
  static const TOPIC_SELECTED = "topic_selected";

  ///When user removed the topic from topics section
  static const TOPIC_UNSELECTED = "topic_unselected";

  ///When app requests for app ratings.
  ///Parameters:
  /// - is_request_available (for debugging purposes)
  /// - pods_created
  /// - pods_listened
  static const APP_REVIEW_REQUESTED = "app_review_requested";

  ///User clicks on a link anywhere in the app
  ///Params: entity_type: url, entity_id (eg. https://arre.link/bkjhsdv)
  static const LAUNCH_URL = "launch_url";

  ////   ************************** VOICE CLUB EVENTS **************************   ////

  ///When user clicks on Voiceclub intro banner
  static const VC_INTRO_BANNER_CLICK = "vc_intro_banner_click";

  ///User dismisses voiceclub intro banner
  static const VC_INTRO_BANNER_DISMISS = "vc_intro_banner_dismiss";

  ///When user clicks on the recommended voiceclub card
  ///Params: entity_id (Voiceclub ID), entity_type  (voiceclub)
  static const VC_REC_CARD_CLICK = "vc_rec_card_click";

  ///When user dismisses recommended voiceclub card
  ///Params: entity_id (Voiceclub ID), entity_type  (voiceclub)
  static const VC_REC_CARD_DISMISS = "vc_rec_card_dismiss";

  ///User clicks on voiceclub from my voiceclubs section
  ///Params: entity_id (Voiceclub ID), entity_type  (voiceclub)
  static const VC_MY_VOICECLUB_CARD_CLICK = "vc_my_voiceclub_card_click";

  ///Voiceclub screen's visible tab
  ///Param: context (feed/chat/members)
  static const VC_VOICECLUB_VISIBLE_TAB = "vc_voiceclub_visible_tab";

  ///User clicks on Accept & Join button
  ///Param: context (pledge_taken/pledge_not_taken)
  static const VC_ACCEPT_AND_JOIN_BTN_CLICK = "vc_accept_and_join_btn_click";

  ///User confirms Leave community
  ///Params: entity_id (Voiceclub ID), entity_type  (voiceclub)
  static const VC_LEAVE_COMMUNITY_CONFIRMED = "vc_leave_community_confirmed";

  ///Admin confirms sending voicepod notification from voiceclub
  ///Params: entity_id (Voiceclub ID), entity_type  (voiceclub)
  static const VC_SEND_VP_NOTIFICATION_CONFIRMED =
      "vc_send_vp_notification_confirmed";

  ///Clicks on voiceclub action buttons from the action sheet of voiceclub
  ///Param: context (Action's name eg. ban/report)
  static const VC_VOICECLUB_ACTION_CLICK = "vc_voiceclub_action_click";

  ///Clicks on member's action buttons from the action sheet of voiceclub's member
  ///Param: context (Action's name eg. ban/report) entity_type, entity_id, voiceclub_id
  static const VC_MEMBER_ACTION_CLICK = "vc_member_action_click";

  ///Voiceclub admin clicks on any action on the pending log
  ///Param: context (action's value), entity_type, entity_id, voiceclub_id
  static const VC_LOG_ACTION_CLICK = "vc_log_action_click";

  ///Admin log screen's visible tab
  ///Param: context (pending/resolved)
  static const VC_ADMIN_LOGS_VISIBLE_TAB = "vc_admin_logs_visible_tab";

  ///User taps on community chat list tile
  ///
  /// Params:
  ///   - context: feed/chats
  ///   - entity_id: CHAT_ID
  ///   - entity_type: vc_chats
  ///   - user_type: admin/member/non_member
  static const VC_CHAT_TILE_TAP = "vc_chat_tile_tap";

  ///Taps on the Chat title on the app bar
  ///
  /// Params:
  ///   - entity_id: CHAT_ID
  ///   - entity_type: vc_chats
  ///   - user_type: admin/member/non_member
  static const VC_CHAT_TITLE_TAP = "vc_chat_title_tap";

  ///Clicks on any of the community chat actions
  ///
  ///Param:
  ///   - context (Action's name eg. delete/pin/mark_as_active etc)
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID
  ///   - entity_type: vc_chats
  static const VC_CHAT_ACTION_CLICK = "vc_chat_action_click";

  ///Selects Report message option after selecting any message
  ///
  ///Param:
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  static const MSG_REPORT_CLICK = "msg_report_click";

  ///Clicks on Delete message button after selecting some messages
  ///
  ///Param:
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///   - entity_value: No of messages selected for deletion
  static const MSG_DELETE_CLICK = "msg_delete_click";

  ///Confirms messages deletion after clicking on delete icon button
  ///
  ///Param:
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///   - entity_value: No of messages selected for deletion
  static const MSG_DELETE_CONFIRMED = "msg_delete_confirmed";

  ///User clicks on the text field and keyboard is shown
  ///
  ///Param:
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  static const MSG_TEXT_FIELD_FOCUSED = "msg_text_field_focused";

  ///User clicks on the mic button
  ///
  ///Param:
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///
  /// Replacement for `dm_record_btn_click`
  static const MSG_RECORD_BTN_TAP = "msg_record_btn_tap";

  ///Actual recording starts
  ///
  ///Param:
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///
  /// Replacement for `dm_recording`
  static const MSG_RECORDING = "msg_recording";

  ///User/System pauses the recording
  ///
  /// param -
  ///
  ///   - context is set to `manual` or `auto`
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///
  /// Replacement for `dm_pause_recording`
  static const MSG_PAUSE_RECORDING = "msg_pause_recording";

  ///User plays audio draft message
  ///
  /// param -
  ///
  ///   - context is set to `manual` or `auto`
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///
  ///Replacement for `dm_play_draft_message`
  static const MSG_PLAY_DRAFT_MESSAGE = "msg_play_draft_message";

  ///User deletes the recorded draft audio message
  ///
  /// param -
  ///
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///
  /// Replacement for `dm_delete_draft_message`
  static const MSG_DELETE_RECORDING_DRAFT = "msg_delete_recording_draft";

  ///User clicks on send button
  ///
  /// params
  ///
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///   - entity_value: text/audio
  ///
  ///Replacement for  `dm_send_message_btn_click`
  static const MSG_SEND_MESSAGE_BTN_CLICK = "msg_send_message_btn_click";

  ///User sends the message successfully
  ///
  /// param
  ///
  ///   - context is set to `request_message` or `normal`
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///   - entity_value: text/audio
  ///
  /// Replacement for `dm_message_sent`
  static const MSG_MESSAGE_SENT = "msg_message_sent";

  ///Message failed to send
  ///
  /// param
  ///
  ///   - context is set to `request_message` or `normal`
  ///   - user_type: admin/member
  ///   - entity_id: CHAT_ID / CONVERSATION_ID
  ///   - entity_type: vc_chats/dm
  ///   - entity_value: text/audio
  static const MSG_MESSAGE_SEND_FAILED = "msg_message_send_failed";

  ///User clicks on the Voiceclub Join button
  ///
  /// Params:
  ///   - context: primary (Main Join button on community screen),
  ///              chats_tap_snackbar (When non-member taps on chat, snackbar message is shown with Join action)
  static const VC_JOIN_TAP = "vc_join_tap";

  ////   ************************** VOICEPOD EVENTS **************************   ////

  ///Clicks on voicepod's action
  ///Param: context (Action's name eg. delete/save/report)
  static const VP_ACTION_CLICK = "vp_action_click";

  ///User selects the language in the onboarding
  static const ONB_LANG_SELECTED = "onb_lang_selected";

  ///Clicks on "Create Voicepod" button in the Creator first welcome screen
  static const ONB_CREATE_VOICEPOD_CLICK = "onb_create_voicepod_click";

  ///Clicks on "Let me listen first" button in Creator first welcome screen
  static const ONB_LET_ME_LISTEN_CLICK = "onb_let_me_listen_click";

  ///Clicks on Skip button in the onboarding
  static const ONB_SKIP_CLICK = "onb_skip_click";

  ///CLicks on the mute button in the onboarding
  static const ONB_MUTE_VO = "onb_mute_vo";

  ///Clicks on the unmute button in the onboarding
  static const ONB_UNMUTE_VO = "onb_unmute_vo";

  ///Clicks on the prompts shown
  static const ONB_CREATE_POD_ON_PROMPT = "onb_create_pod_on_prompt";

  ///Clicks on Create on any other topic
  static const ONB_CREATE_POD_ON_OWN_TOPIC = "onb_create_pod_on_own_topic";

  ///Gesture - left/right
  static const ONB_PROMPT_SLIDE = "onb_prompt_slide";

  ///Clicks on the Next button in Creator studio
  static const CS_DRAFT_NEXT_CLICK = "cs_draft_next_click";

  ///Validation of CS Draft fails
  static const CS_DRAFT_VALIDATION_FAILED = "cs_draft_validation_failed";

  ///CLicks on the Share on whatsapp/facebook button after drafting a pod
  static const ONB_DRAFT_POD_SHARE_CLICK = "onb_draft_pod_share_click";

  static const ONB_SHARE_CLIP_CLICK = "onb_share_clip_click";

  ///Clicks on the Post to Arre voice app after drafting a pod
  static const ONB_DRAFT_POD_POST_CLICK = "onb_draft_pod_post_click";

  ///When story or/and pods loading failed
  static const ONB_STORY_LOADING_FAILED = "onb_story_loading_failed";

  ///When welcome text is shown
  static const ONB_STORY_WELCOME = "onb_story_welcome";

  ///Voicepods are being introduced or animates in
  static const ONB_STORY_INTRO_PODS = "onb_story_intro_pods";

  ///Voice over - guides the user to play voicepod
  static const ONB_STORY_VO_TO_PLAY = "onb_story_vo_to_play";

  ///Voice over - guides user to like or dislike
  static const ONB_STORY_VO_TO_LIKE_OR_DISLIKE =
      "onb_story_vo_to_like_or_dislike";

  ///When user does not interact with the voicepod after 20 sec of pod completion.
  static const ONB_STORY_NOT_INTERACTED_WITH_POD =
      "onb_story_not_interacted_with_pod";

  ///User liked the voicepod
  ///
  /// Params:
  ///   event_value: pod-index
  ///   context: swipe/tap
  ///   pod_item_id: Post ID
  static const ONB_STORY_LIKED_POD = "onb_story_liked_pod";

  ///User disliked the voicepod
  ///
  /// Params:
  ///   event_value: pod-index
  ///   context: swipe/tap
  ///   pod_item_id: Post ID
  static const ONB_STORY_DISLIKED_POD = "onb_story_disliked_pod";
}

abstract class GAScreen {
  static const CS_DRAFTS = 'creator_studio_drafts';
  static const NOT_FOUND = 'not_found_screen';
  static const PHOTO_VIEW = 'photo_view_screen';
  static const PROFILE_VERIFIED_ANIMATION = 'profile_verified_animation';
  static const SPLASH = 'splash_screen';
  static const UPDATE_APP = 'update_app_screen';
  static const VOICEPOD_DETAIL = 'voicepod_detail_screen';
  static const WEBVIEW = 'webview_screen';
  static const ANALYTICS = 'analytics_screen';
  static const VOICEPOD_ANALYTICS = 'voicepod_analytics_screen';
  static const CREATOR_STUDIO = 'creator_studio_screen';
  static const EDIT_PROFILE = 'edit_profile_screen';
  static const HASHTAG_POSTS = 'hashtag_posts_screen';
  static const HOME_TAB = '/home_tab';
  static const INVITE = 'invite_screen';
  static const NOTIFICATIONS = 'notifications_screen';
  static const GRATIFICATION = 'gratification_screen';
  static const GENDER_SELECTION = 'gender_selection_screen';
  static const LANGUAGE_SELECTION = 'language_selection_screen';
  static const LOGIN = 'login_screen';
  static const SIGN_UP_PHONE_ENTRY = 'sign_up_phone_entry_screen';
  static const USERNAME_CREATE = 'username_create_screen';
  static const OTP_VALIDATION = 'otp_validation_screen';
  static const WELCOME = 'welcome_screen';
  static const PLAYLIST_CREATE = 'playlist_create_screen';
  static const MY_PLAYLIST = 'my_playlist';
  static const UPDATE_PLAYLIST = 'update_playlist_screen';
  static const ARRE_PLAYLIST = 'arre_playlist';
  static const PLAY_HISTORY = 'play_history_screen';
  static const PLAYLIST_DETAILS = 'playlist_details_screen';
  static const USER_NETWORK_LIST = 'user_network_list';
  static const PROFILE_PICTURE_DIALOG = 'profile_picture_dialog';
  static const SELF_PROFILE = 'self_profile_screen';
  static const OTHER_PROFILE = 'other_profile_screen';
  static const REPORT = 'report_screen';
  static const RULES_AND_REGULATIONS = 'rules_and_regulations_screen';
  static const SEARCH = 'search_screen';
  static const ACCOUNT_SETTINGS = 'account_settings_screen';
  static const PRIVACY_POLICY = 'privacy_policy_screen';
  static const TERMS_AND_CONDITIONS = 'terms_and_conditions_screen';
  static const BLOCKED_USERS = 'blocked_users_screen';
  static const CONVERSATIONS = 'conversations_screen';
  static const MESSAGE_REQUESTS = 'message_requests_screen';
  static const MESSAGE_DETAILED_SCREEN = 'message_detailed_screen';
  static const VOICEPOD_STORY_SCREEN = 'voicepod_story_screen';
  static const AB1_WELCOME_SCREEN = 'AB1_welcome_screen';
  static const AB1_CV_SUGGESTION_SCREEN = 'AB1_CV_suggestion_Screen';
  static const AB1_CV_DRAFTED_SCREEN = 'AB1_CV_drafted_screen';
  static const AB1_PHONE_ENTRY_SCREEN = 'AB1_phone_entry_screen';

  //sheet name
  static const LANGUAGE_SELECTION_SHEET = 'language_selection_sheet';
  static const MOOD_SELECTION_SHEET = 'mood_selection_sheet';
  static const SHARE_TRAY_SHEET = 'share_tray_sheet';
  static const CONVERSATION_ACTION_SHEET = 'conversation_action_sheet';
  static const PROFILE_ACTION_SHEET = 'profile_action_sheet';
  static const COMPLETE_ONBOARDING_PROMPT_SHEET =
      'complete_onboarding_prompt_sheet';
  static const EDIT_PROFILE_PROMPT_SHEET = 'edit_profile_prompt_sheet';
  static const CS_IMPORT_CONFIRM_SHEET = 'cs_import_confirm_sheet';
  static const CS_RESTART_CONFIRM_SHEET = 'cs_restart_confirm_sheet';
  static const DELETE_BIO_CONFIRM_SHEET = 'delete_bio_confirm_sheet';
  static const EDIT_PROFILE_SAVE_CONFIRM_SHEET =
      'edit_profile_save_confirm_sheet';
  static const MY_TOPICS = 'my_topics_screen';
  static const SUGGESTED_USERS = 'suggested_users_screen';
  static const CURRENT_PLAYLIST_SHEET = 'current_playlist_sheet';
  static const VOICECLUB_CHAT_INFO_SCREEN = "voiceclub_chat_info_screen";
  static const CREATE_CHAT_FORM_SCREEN = "create_chat_form_screen";
  static const UPDATE_CHAT_FORM_SCREEN = "update_chat_form_screen";
  static const DELETE_VOICEPOD_CONFIRM_SHEET = 'delete_voicepod_confirm_sheet';
  static const VOICECLUB_DETAIL_SCREEN = 'voiceclub_detail_screen';
  static const DOWNLOADED_PODS_SCREEN = 'downloaded_pods_screen';
  static const VOICECLUB_ADMIN_LOGS_SCREEN = 'voiceclub_admin_logs_screen';
  static const VOICECLUB_RULES_ACCEPT_SCREEN = 'voiceclub_rules_accept_screen';
  static const VOICECLUB_MEMBER_SEARCH_SCREEN =
      'voiceclub_member_search_screen';
  static const VOICECLUB_RULES_SCREEN = 'voiceclub_rules_screen';
  static const DISCOVER_VOICECLUBS_SCREEN = 'discover_voiceclubs_screen';
  static const MY_VOICECLUBS_SCREEN = 'my_voiceclubs_screen';
  static const MY_LIKED_PLAYLIST = 'my_liked_playlist';
  static const VOICECLUB_CHAT_ACTION_SHEET = "voiceclub_chat_action_sheet";
  static const VOICECLUB_CHAT_SCREEN = "voiceclub_chat_screen";
  static const VOICE_CLUB_INVITE_SHEET = "voice_club_invite_sheet";
  static const LANGUAGE_SELECTION_SCREEN = "language_selection_screen";
  static const CURATING_FEED_ANIM_SCREEN = "curating_feed_anim_screen";
}

abstract class EventAttribute {
  static const CURRENT_SCREEN_NAME = 'current_screen_name';
  static const PREVIOUS_SCREEN_NAME = 'previous_screen_name';
  static const FEATURE_NAME = 'featurename';
  static const ACTION = 'action';
  static const GESTURE = 'gesture';

  static const VOICECLUB_ID = 'voiceclub_id';
  static const ENTITY_ID = 'entity_id';
  static const ENTITY_TYPE = 'entity_type';
  static const POD_PLAYING_SOURCE_SCREEN = "pod_playing_source_screen";
  static const POD_PLAYING_SOURCE_ID = "pod_playing_source_id";
  static const POD_PLAYING_SOURCE_ENTITY = "pod_playing_source_entity";

  static const POD_SPEED = "pod_speed";

  ///Voicepod ID
  static const POD_ITEM_ID = "pod_item_id";
  static const POST_ID = "pod_item_id";
  static const USER_ID = "user_id";

  //id of particular topic
  static const TOPIC_ID = "topic_id";

  ///For example it can be likes count or comments count
  ///when user clicks on the respective number text buttons
  static const EVENT_COUNT = "event_count";

  static const EVENT_VALUE = "event_value";

  static const PLAYED_DURATION_IN_SEC = "played_duration_in_sec";
  static const PLAYED_PERCENT = "played_percent";

  ///Flutter's [AppLifecycleState]
  static const APP_VISIBILITY_STATE = "app_visibility_state";

  ///A more generic param.
  ///
  /// For example,
  static const GA_CONTEXT = "context";

  static const SHARED_ON = "shared_on";
  static const SHARED_ACTION_STATUS = "shared_action_status";
  static const SHARED_TYPE = "shared_type";

  ///MESSAGE_TYPE is 'text' or 'audio' - used when send button click and sending dm
  static const MESSAGE_TYPE = "message_type";

  static const USER_TYPE = "user_type";

  static const ONBOARDING_LANGUAGE = "onboarding_language";
}

abstract class UserProperty {
  static const ARRE_USER_ID = 'arre_user_id';

  ///The values can be `guest`, `logged_in_not_onboarded`, `logged_in_and_onboarded`
  static const USER_AUTH_STATUS = "user_auth_status";

  ///Values can be `ON` | `OFF`
  static const AUTO_PLAY_STATUS = 'auto_play_status';
  static const PLATFORM = 'platform';
  static const PLATFORM_VERSION = 'platform_version';
  static const BUILD_NUMBER = 'build_number';
  static const VERSION_NUMBER = 'version_number';
  static const ONBOARDING_FLOW = 'onboarding_flow';
}

final arreAnalytics = ArreAnalytics._();

class ArreAnalytics {
  AppLifecycleState? _appLifecycleState;
  Map<String, Object?> _globalParams = {};
  String? _prevReportedScreenName;
  Uri? _prevReportedScreenLocation;

  ArreAnalytics._();

  FirebaseAnalytics get _analytics => FirebaseAnalytics.instance;

  FirebaseCrashlytics get _crashlytics => FirebaseCrashlytics.instance;

  ///Returns `foreground` or `background` based on the
  String get appState {
    switch (_appLifecycleState) {
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        return "background";
      default:
        return "foreground";
    }
  }

  void logEvent(
    String name, {
    Map<String, Object?>? parameters,
  }) async {
    try {
      assert(name.length <= 40, "Analytics Event name exceeds 40 characters");
      parameters?.removeWhere((key, value) => value == null);
      if (kDebugMode || AppConfig.isDev) {
        ALogger.gaEvent("$name $parameters");
        return;
      }
      await _analytics.logEvent(
        name: name,
        parameters: parameters,
      );
      Singular.eventWithArgs(name, {..._globalParams, ...?parameters});
      log('$name ${Map.from({...?parameters, ..._globalParams})}',
          name: "ARRE_ANALYTICS");
    } catch (err) {
      log('Error triggering $name', name: 'ARRE_ANALYTICS');
    }
  }

  void setAppState(AppLifecycleState state) {
    _appLifecycleState = state;
    String value;
    switch (state) {
      case AppLifecycleState.resumed:
        value = "visible";
        break;
      case AppLifecycleState.inactive:
        value = "partially_visible";
        break;
      case AppLifecycleState.hidden:
        value = "hidden";
        break;
      case AppLifecycleState.paused:
        value = "invisible";
        break;
      case AppLifecycleState.detached:
        value = "detached";
        break;
    }
    setGlobalParams({EventAttribute.APP_VISIBILITY_STATE: value});
  }

  Future<void> setGlobalParams(Map<String, Object?> globalParams) async {
    if (kDebugMode || AppConfig.isDev) {
      ALogger.gaGlobalEventProperty("$globalParams");
      return;
    }
    try {
      _globalParams.addAll(globalParams);
      _globalParams.removeWhere((key, value) => value == null);
      await _analytics.setDefaultEventParameters(this._globalParams);
      log('setGlobalParamS $_globalParams');
    } catch (err) {
      log('Error triggering setGlobalParamS', name: 'ARRE_ANALYTICS');
    }
  }

  void setUserProperty(String key, String? value) {
    if (kDebugMode || AppConfig.isDev) {
      ALogger.gaUserProperty("$key: $value");
      return;
    }
    _analytics.setUserProperty(name: key, value: value);
    if (value == null) {
      Singular.unsetGlobalProperty(key);
    } else {
      Singular.setGlobalProperty(key, value, true);
    }
  }

  ///[loginMethod] can be `guest` or `phone_number`
  void logLogin(String loginMethod) {
    if (kDebugMode || AppConfig.isDev) {
      ALogger.gaEvent("login_method: $loginMethod");
      return;
    }
    _analytics.logLogin(loginMethod: loginMethod).catchError((err) {
      log("Analytics error", name: "ANALYTICS", error: err);
    });
  }

  void logSignup() {
    if (kDebugMode || AppConfig.isDev) {
      ALogger.gaEvent("signup_method: phone_number");
      return;
    }
    _analytics.logSignUp(signUpMethod: "phone_number").catchError((err) {
      log("Analytics error", name: "ANALYTICS", error: err);
    });
  }

  void setUserId(String? userId) {
    if (kDebugMode || AppConfig.isDev) {
      ALogger.gaUserProperty("User ID $userId");
      return;
    }
    _analytics.setUserId(id: userId);
    setUserProperty(UserProperty.ARRE_USER_ID, userId);
    _crashlytics.setUserIdentifier(userId ?? "");
    if (userId == null || userId.trim().isEmpty) {
      Singular.unsetCustomUserId();
      facebook_events.FacebookAppEvents().clearUserID();
    } else {
      Singular.setCustomUserId(userId);
      facebook_events.FacebookAppEvents().setUserID(userId);
    }
  }

  void clearSession() {
    if (kDebugMode || AppConfig.isDev) {
      ALogger.i("GA Reset analytics data");
    }
    _analytics.resetAnalyticsData();
  }

  void setCurrentScreen(String screenName, [Uri? location]) {
    if (_prevReportedScreenLocation == location &&
        _prevReportedScreenName == screenName) {
      return;
    }
    _prevReportedScreenName = screenName;
    _prevReportedScreenLocation = location;
    if (kDebugMode || AppConfig.isDev) {
      ALogger.gaScreen("$screenName $location");
      return;
    }
    FirebaseAnalytics.instance
        .setCurrentScreen(
      screenName: screenName,
      screenClassOverride: location?.toString() ?? "Flutter",
    )
        .catchError((Object error) {
      debugPrint('SetCurrentScreenView: $error');
    });
    Singular.eventWithArgs("sv_$screenName", {
      ..._globalParams,
      ...{
        "screen_location": location ?? "",
      }
    });
  }
}
