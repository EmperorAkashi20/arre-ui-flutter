library arre_message_providers;

import 'dart:async';
import 'dart:collection';
import 'dart:developer';

import 'package:arre_direct_messages_gql/arre_direct_messages_gql.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/message.dart';
import 'package:arre_frontend_flutter/models/src/message_draft.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/arre_message_providers/message_actions_manager.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_ffmpeg_provider.dart';
import 'package:arre_frontend_flutter/providers/media_sound_manager.dart';
import 'package:arre_frontend_flutter/providers/messages_mixins.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:record/record.dart' as record;

part 'message_draft_provider.dart';

part 'conversations_provider.dart';

part 'messages_provider.dart';

part 'requests_provider.dart';

part 'message_requests_provider.dart';

part 'messages_unread_state_provider.dart';
