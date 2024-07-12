library arre_message;

import 'dart:async';
import 'dart:developer';

import 'package:arre_community_manage_gql/arre_community_manage_gql.dart';
import 'package:arre_direct_messages_gql/arre_direct_messages_gql.dart';
import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/graphql/socket_service.dart';
import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/models/src/message.dart';
import 'package:arre_frontend_flutter/models/src/message_draft.dart';
import 'package:arre_frontend_flutter/providers/arre_message_providers/arre_message_providers.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/blocked_users_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/chat_messages_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_actions_manager.dart';
import 'package:arre_frontend_flutter/providers/communities/community_provider.dart';
import 'package:arre_frontend_flutter/providers/messages_mixins.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/screens/communities/chat_form_screen.dart';
import 'package:arre_frontend_flutter/screens/future_loader_dialog.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/screens/report_screens/report_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/action_sheet_common.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/compact_popup_menu.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/player_progress_bar.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/widgets/user_list_tile.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../providers/communities/community_chats_provider.dart';
import '../../widgets/message_draft_widget.dart';
import 'community_chats_info_screen.dart';

part 'message_screen.dart';

part 'conversations_screen.dart';

part 'message_widgets.dart';

part 'messaging_states.dart';

part 'message_requests_screen.dart';

part 'conversation_action_sheet.dart';

part 'community_chat_screen.dart';

part 'community_chats_action_sheet.dart';
