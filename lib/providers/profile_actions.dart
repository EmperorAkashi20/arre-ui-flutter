import 'package:arre_frontend_flutter/providers/follow_providers/user_follow_details_provider.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'invite_screen_providers/follow_status_provider.dart';

abstract class ProfileAction {
  static Future<void> followUser(WidgetRef ref, String userId) async {
    await ref.read(followStatusProvider).followUser(userId);
    if (ref.exists(userFollowCountsProvider(arrePref.userId!))) {
      ref.invalidate(userFollowCountsProvider(arrePref.userId!));
    }
    if (ref.exists(userFollowCountsProvider(userId))) {
      ref.invalidate(userFollowCountsProvider(userId));
    }
  }

  static Future<void> unFollowUser(WidgetRef ref, String userId) async {
    await ref.read(followStatusProvider).unFollowUser(userId);
    if (ref.exists(userFollowCountsProvider(arrePref.userId!))) {
      ref.invalidate(userFollowCountsProvider(arrePref.userId!));
    }
    if (ref.exists(userFollowCountsProvider(userId))) {
      ref.invalidate(userFollowCountsProvider(userId));
    }
  }
}
