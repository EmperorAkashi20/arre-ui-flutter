library communities;

import 'dart:developer';

import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/models/src/post.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/providers/communities/community_actions_manager.dart';
import 'package:arre_frontend_flutter/providers/communities/community_chats_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_feed_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_member_search_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_members_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_mod_requests_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_provider.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/screens/communities/chat_form_screen.dart';
import 'package:arre_frontend_flutter/screens/communities/discover_communities_screen.dart';
import 'package:arre_frontend_flutter/screens/creator_studio/creator_studio.dart';
import 'package:arre_frontend_flutter/screens/future_loader_dialog.dart';
import 'package:arre_frontend_flutter/screens/language_selection_sheet.dart';
import 'package:arre_frontend_flutter/screens/report_screens/report_screen.dart';
import 'package:arre_frontend_flutter/screens/share_tray_sheet.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/action_sheet_common.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_gradient_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/widgets/user_list_tile.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';

import '../../providers/audio_player/pod_player_v3.dart';
import '../../widgets/arre_common_loader.dart';
import '../../widgets/arre_error_widget.dart';
import '../../widgets/voicepod/voicepod_card.dart';

import 'package:arre_frontend_flutter/utils/snackbars.dart';

import '../arre_message/arre_message.dart';


part 'community_detail_screen.dart';

part 'community_join_screen.dart';

part 'community_action_sheet.dart';

part 'community_rules_screen.dart';

part 'community_admin_logs_screen.dart';

part 'community_member_action_sheet.dart';

part 'community_member_search_screen.dart';

part 'community_share_sheet.dart';

part 'community_chats_tab.dart';
