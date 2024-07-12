library playlist;

import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/playlist_cu_provider.dart';
import 'package:arre_frontend_flutter/providers/playlist_providers.dart/playlist_details_provider.dart';
import 'package:arre_frontend_flutter/providers/user_playlist_provider.dart';
import 'package:arre_frontend_flutter/screens/playlist_detail_screens/playlist_detail_screens.dart';
import 'package:arre_frontend_flutter/screens/share_tray_sheet.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/action_sheet_common.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/drag_indicator.dart';
import 'package:arre_frontend_flutter/widgets/playlist_tile.dart';

import 'package:arre_playlist_gql/arre_playlist_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../arre_routing/routing.dart';
import '../../widgets/filled_icon_button.dart';

part 'create_playlist_dialog.dart';

part 'update_playlist_dialog.dart';

part 'select_playlist_sheet.dart';

part 'playlist_actions.dart';

part 'my_playlist_screen.dart';

part 'playlist_common_widgets.dart';

part 'playlist_share_sheet.dart';
