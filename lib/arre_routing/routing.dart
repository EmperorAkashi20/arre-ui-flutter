library arre_router;

import 'dart:async';
import 'dart:developer';

import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/arre_link_manager.dart';
import 'package:arre_frontend_flutter/providers/arre_message_providers/arre_message_providers.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/communities/recommended_communities_provider.dart';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/home_screen_provider.dart';
import 'package:arre_frontend_flutter/providers/invite_link_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/notification_providers/notification_provider.dart';
import 'package:arre_frontend_flutter/providers/push_notification_manager.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/screens/analytics/analytics_screen.dart';
import 'package:arre_frontend_flutter/screens/arre_message/arre_message.dart';
import 'package:arre_frontend_flutter/screens/arre_message/community_chats_info_screen.dart';
import 'package:arre_frontend_flutter/screens/blocked_users_screen.dart';
import 'package:arre_frontend_flutter/screens/communities/chat_form_screen.dart';
import 'package:arre_frontend_flutter/screens/communities/communities.dart';
import 'package:arre_frontend_flutter/screens/communities/discover_communities_screen.dart';
import 'package:arre_frontend_flutter/screens/communities/my_communities_screen.dart';
import 'package:arre_frontend_flutter/screens/creator_studio/creator_studio.dart';
import 'package:arre_frontend_flutter/screens/current_playlist_sheet.dart';
import 'package:arre_frontend_flutter/screens/downloded_voicepods_screen.dart';
import 'package:arre_frontend_flutter/screens/debugging_logs.dart';
import 'package:arre_frontend_flutter/screens/edit_profile/edit_profile_screen.dart';
import 'package:arre_frontend_flutter/screens/home_screen/home_screen.dart';
import 'package:arre_frontend_flutter/screens/language_selection_screen.dart';
import 'package:arre_frontend_flutter/screens/my_topics_screen.dart';
import 'package:arre_frontend_flutter/screens/network_logs_screen.dart';
import 'package:arre_frontend_flutter/screens/not_found_screen.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/welcome_screen.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/follow_details_screen.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/screens/suggested_users_screen.dart';

import 'package:arre_frontend_flutter/screens/update_app_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_gradient_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/player_progress_bar.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/player_speed_button.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/screens/report_screens/rules_and_regulations.dart';
import 'package:arre_frontend_flutter/screens/splash_screen.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/privacy_policies.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/terms_and_condition.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../providers/feed_providers/home_page_feed_providers.dart';
import '../screens/explore/explore_hashtag_posts.dart';
import '../screens/invite_user_new/invite_user_new.dart';
import '../screens/notification_screen/notification_screen.dart';
import '../screens/playlist/playlist.dart';
import '../screens/search/search_screen.dart';
import '../screens/settings/my_account_settings.dart';
import '../screens/web_view_screen.dart';

part 'route_info_parser.dart';

part 'route_info_provider.dart';

part 'arre_pages.dart';

part 'arre_router_delegate.dart';

part 'internal_router/app_bottom_navigation_bar.dart';

part 'internal_router/internal_router.dart';

part 'internal_router/internal_router_delegate.dart';

part 'internal_router/pod_player_bar.dart';

part 'screen_view_analytics.dart';

const _LOG = "ARRE_NAVIGATOR";
