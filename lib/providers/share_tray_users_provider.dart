import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/message.dart';
import 'package:arre_frontend_flutter/models/src/message_draft.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/providers/arre_message_providers/message_actions_manager.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'arre_message_providers/arre_message_providers.dart';

const MAX_SHARE_COUNT = 5;

class EntityShareMessage {
  final String conversationId;

  // final Uint8List audioBytes;
  final String entityType, entityId;

  EntityShareMessage({
    required this.conversationId,
    required this.entityType,
    required this.entityId,
  });
}

final _sendEntityShareMessageProvider =
    FutureProvider.family<AMessage, EntityShareMessage>((ref, draft) async {
  final message = await ApiService.instance.sendMessage(
    messageType: draft.entityType,
    entityId: draft.entityId,
    conversationId: draft.conversationId,
  );

  if (ref.exists(messagesProvider(draft.conversationId))) {
    final messagePvd = ref.read(messagesProvider(draft.conversationId));
    if (messagePvd.data.isEmpty) {
      await Future.value(ref
          .refresh(conversationDetailsProvider(draft.conversationId).future));
    }
    messagePvd.addMessage(message);
  }

  return message;
});

final shareTrayUsersProvider =
    ChangeNotifierProvider.autoDispose((ref) => ShareTrayUsersProvider(ref));

///It will be followers for now
class ShareTrayUsersProvider
    with
        ChangeNotifier,
        OnScroll<ArreUser>,
        LoadOnScrollNotificationV2,
        _SearchUser {
  final Ref _ref;
  String? _lastCreatedAt;

  Map<String, bool> _selectedUsers = {};

  String get userId => arrePref.userId!;

  List<ArreUser>? _data;
  dynamic _error;
  bool _isLoading = true, _isSending = false;

  ShareTrayUsersProvider(this._ref) {
    init();
    initSearch();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  bool get hasAnyUserSelected => _selectedUsers.isNotEmpty;

  bool get isSending => _isSending;

  List<ArreUser>? get data => _data;

  dynamic get error => _error;

  bool isSelected(String userId) => _selectedUsers[userId] == true;

  Future<void> init() async {
    try {
      final result = await ApiService.instance.getUsersListToDM();
      _data = result.$1;
      _lastCreatedAt = result.$2;
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  void _rearrangeUsersList(ArreUser user) {
    _data?.removeWhere((e) => e.userId == user.userId);
    _data?.insert(0, user);
  }

  ///Returns if user is selected
  bool changeSelection(ArreUser user) {
    if (isSelected(user.userId)) {
      _selectedUsers.remove(user.userId);
    } else {
      arreAnalytics.logEvent(
        GAEvent.SHARE_TRAY_USER_SELECTED,
        parameters: {EventAttribute.EVENT_COUNT: _selectedUsers.length + 1},
      );
      if (_selectedUsers.length >= MAX_SHARE_COUNT) {
        throw ArreException(
            "You can select up to $MAX_SHARE_COUNT recipients to share the voicepod");
      }
      _selectedUsers[user.userId] = true;
      if (searchResult?.isNotEmpty ?? false) {
        _rearrangeUsersList(user);
      }
    }
    notifyListeners();
    return _selectedUsers[user.userId] == true;
  }

  Future<void> sendMessage({
    required String entityType,
    required String? entityId,
    required String? message,
  }) async {
    if (_isSending) return null;
    try {
      _isSending = true;
      notifyListeners();
      final conversationIds = await Future.wait(
          _selectedUsers.keys.map((userId) => Utils.getConversationId(userId)));
      if (entityId != null) {
        await Future.wait(
          conversationIds.map(
            (conversationId) => _ref.read(_sendEntityShareMessageProvider(
              EntityShareMessage(
                entityType: entityType,
                entityId: entityId,
                conversationId: conversationId,
              ),
            ).future),
          ),
          eagerError: true,
        );
      } else if (message != null) {
        await Future.wait(
          conversationIds.map(
            (conversationId) => MessageActionsManager.sendMessage(
                TextMessageDraftV2(
                  body: message,
                  messagingOn: MessageOn.DM,
                  conversationId: conversationId,
                ),
                _ref),
          ),
          eagerError: true,
        );
      } else {
        throw ArreException(AExceptionKey.ENTITY_ID_OR_MESSAGE_NOT_PROVIDED);
      }
      arreAnalytics.logEvent(
        GAEvent.SHARE_AS_MESSAGE_SENT,
        parameters: {
          EventAttribute.EVENT_COUNT: conversationIds.length,
          EventAttribute.ENTITY_TYPE: entityType,
          EventAttribute.ENTITY_ID: entityId,
        },
      );
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    } finally {
      _isSending = false;
      notifyListeners();
    }
  }

  @override
  Future<List<ArreUser>> loadNextItems() async {
    final result = await ApiService.instance.getUsersListToDM(_lastCreatedAt);
    _data!.addAll(result.$1);
    _lastCreatedAt = result.$2;
    return result.$1;
  }

  @override
  void dispose() {
    disposeSearch();
    super.dispose();
  }
}

///Call [initSearch] in Constructor and [disposeSearch] in dispose of the provider
mixin _SearchUser on ChangeNotifier {
  List<ArreUser>? _searchResult;

  List<ArreUser>? get searchResult => _searchResult;
  StreamController<String> _searchFieldStreamCtrl = StreamController();
  bool isSearching = false;
  dynamic searchError;

  TextEditingController searchFieldCtrl = TextEditingController();

  void initSearch() {
    _searchFieldStreamCtrl.stream
        .debounce((_) => TimerStream(true, Duration(milliseconds: 500)))
        .listen(_searchUsers);
    searchFieldCtrl.addListener(() {
      final keyword = searchFieldCtrl.text.validValue;
      if (keyword == null) {
        _searchResult = null;
        notifyListeners();
        return;
      }
      _searchFieldStreamCtrl.add(keyword);
    });
  }

  Future<void> _searchUsers(String keyword) async {
    try {
      searchError = null;
      isSearching = true;
      notifyListeners();
      final result = await ApiService.instance.searchFollowers(keyword);
      if (keyword.validValue == searchFieldCtrl.text.validValue) {
        _searchResult = result;
      }
    } catch (err, st) {
      searchError = err;
      Utils.reportError(err, st);
    } finally {
      isSearching = false;
      notifyListeners();
    }
  }

  void disposeSearch() {
    searchFieldCtrl.dispose();
    _searchFieldStreamCtrl.close();
  }
}
