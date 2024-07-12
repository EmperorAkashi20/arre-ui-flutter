import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

final communityMemberSearchProvider =
    ChangeNotifierProvider.family<CommunityMemberSearchProvider, String>(
  (ref, communityId) {
    return CommunityMemberSearchProvider(communityId);
  },
);

class CommunityMemberSearchProvider with ChangeNotifier {
  final String communityId;
  dynamic error;
  List<ArreUser> initialData = [];
  final textEditingCtrl = TextEditingController();
  final _searchKeywordStreamCtrl = StreamController<String>();
  bool _isSearching = false;
  String? _currentSearchedKeyword;

  List<ArreUser>? _data;

  List<ArreUser> get data => _data ?? initialData;

  bool get hasData => _data != null;

  bool get isSearching => _isSearching;

  CommunityMemberSearchProvider(this.communityId) {
    _searchKeywordStreamCtrl.stream
        .debounceTime(Duration(milliseconds: 300))
        .listen(_searchMembers);
    textEditingCtrl.addListener(() {
      _searchKeywordStreamCtrl.add(textEditingCtrl.text.trim());
    });
  }

  Future<void> _searchMembers(String keyword) async {
    keyword = keyword.trim();
    if (!keyword.isValid) {
      _currentSearchedKeyword = null;
      error = null;
      _data = null;
      notifyListeners();
      return;
    }

    if (keyword == _currentSearchedKeyword) return;
    try {
      _isSearching = true;
      notifyListeners();
      final result = await ApiService.instance.searchCommunityMembers(
        communityId: communityId,
        keyword: keyword,
      );
      if (keyword == textEditingCtrl.text.trim()) {
        _currentSearchedKeyword = keyword;
        _data = result;
      }
      error = null;
    } catch (err, st) {
      error = err;
      Utils.reportError(err, st);
    } finally {
      _isSearching = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    // textEditingCtrl.dispose();
    _searchKeywordStreamCtrl.close();
    super.dispose();
  }
}
