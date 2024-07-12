import 'package:arre_notification_gql/arre_notification_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:flutter/widgets.dart';

import '../../utils/utils.dart';

final notificationsUnreadStateProvider =
    StateNotifierProvider<NotificationUnreadStateProvider, bool>(
        (ref) => NotificationUnreadStateProvider());

final notificationProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return NotificationProvider();
  },
);

class NotificationProvider
    with
        ChangeNotifier,
        OnScroll<GNotificationData_response_data>,
        LoadOnScrollNotificationV2 {
  List<GNotificationData_response_data>? _data;
  bool _isLoading = true;
  dynamic _error;
  static const int pageSize = 20;

  NotificationProvider() {
    // attachLoadOnScroll();
  }

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _data != null;

  List<GNotificationData_response_data>? get data => _data;

  Future<void> loadNotifications() async {
    try {
      _isLoading = true;
      resetLoadOnScroll();
      _data = await ApiService.instance
          .getNotifications(after: "", schemaName: "TransactionalNotification");
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> markAllNotificationAsSeen(
      Iterable<GNotificationData_response_data> notifications) async {
    try {
      final filteredNotifications =
          notifications.where((n) => n.seenByUser != true).toList();
      if (filteredNotifications.isEmpty) {
        return;
      }
      await ApiService.instance.markAllNotificationAsSeen();
      filteredNotifications.forEach((element) {
        final index = _data!.indexOf(element);
        if (index >= 0) {
          _data![index] = element.rebuild((p0) => p0.seenByUser = true);
        }
      });
      notifyListeners();
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  Future<void> refresh() => loadNotifications();

  void _markAllNotificationsAsSeen() {
    final unseenNotifications =
        _data?.where((element) => element.seenByUser != true);
    if (unseenNotifications != null) {
      markAllNotificationAsSeen(unseenNotifications);
    }
  }

  @override
  Future<List<GNotificationData_response_data>> loadNextItems() async {
    _markAllNotificationsAsSeen();
    final nextNotificationData = await ApiService.instance.getNotifications(
        after: _data!.last.createdOn!, schemaName: "TransactionalNotification");
    _data!.addAll(nextNotificationData);
    return nextNotificationData;
  }
}

///false - No Unread Notifications
///true - Has Unread Notifications
class NotificationUnreadStateProvider extends StateNotifier<bool> {
  NotificationUnreadStateProvider() : super(false) {
    init();
  }

  bool get hasUnreadNotifications => state;

  Future<void> init() async {
    try {
      state = await ApiService.instance.getUnreadNotificationStatus();
    } catch (err, st) {
      Utils.reportError(err, st);
    }
  }

  void markAsRead() {
    state = false;
  }
}
