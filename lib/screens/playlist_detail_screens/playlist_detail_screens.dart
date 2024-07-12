library playlist_detail_screens;

import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/feed_providers/home_page_feed_providers.dart';
import 'package:arre_frontend_flutter/providers/play_history_provider.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/my_liked_playlist_provider.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/playlist_details_provider.dart';
import 'package:arre_frontend_flutter/screens/playlist/playlist.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/user_list_tile.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../arre_routing/routing.dart';
import '../../widgets/arre_back_button.dart';

part 'play_history_screen.dart';

part 'arre_playlist_details_screen.dart';

part 'common_widgets.dart';

part 'user_playlist_details_screen.dart';

part 'my_liked_playlist.dart';
