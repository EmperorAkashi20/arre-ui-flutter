import 'dart:developer';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';

final languagesProvider = FutureProvider.autoDispose((ref) async {
  final languages = await ApiService.instance.getLanguages();
  ref.keepAlive();
  return languages;
});

final userLanguagesProvider =
    ChangeNotifierProvider.autoDispose((ref) => UserLanguagesProvider());

class UserLanguagesProvider with ChangeNotifier {
  Set<String> _selectedLanguages = {};
  bool _isSubmitting = false;

  bool get isSubmitting => _isSubmitting;

  List<String> get selectedLanguages => List.unmodifiable(_selectedLanguages);

  UserLanguagesProvider() {
    init();
  }

  Future<void> init() async {
    _selectedLanguages =
        (await ApiService.instance.getUserLanguages(arrePref.userId!)).toSet();
    notifyListeners();
  }

  bool isSelected(String language) {
    return _selectedLanguages.contains(language);
  }

  void changeSelection(String language) {
    if (_isSubmitting) return;
    if (_selectedLanguages.contains(language)) {
      _selectedLanguages.remove(language);
    } else {
      _selectedLanguages.add(language);
    }
    log(_selectedLanguages.toString());
    notifyListeners();
  }

  Future<void> update({
    required void Function(String message) onSuccess,
    required void Function(dynamic error) onError,
  }) async {
    if (_isSubmitting) return;
    try {
      if (_selectedLanguages.isEmpty) {
        throw ArreIgnoreException("Please select at least 1 language");
      }
      _isSubmitting = true;
      notifyListeners();
      final languages = _selectedLanguages.join(",").toLowerCase();
      final response =
          await ApiService.instance.updatePreferencesForUser(languages);
      await arrePref.setStringList(
          PrefKey.LANGUAGE_PREFERENCES, selectedLanguages);
      onSuccess(response.message ?? "Preferences updated");
    } catch (err, st) {
      Utils.reportError(err, st);
      onError.call(err);
    } finally {
      _isSubmitting = false;
      notifyListeners();
    }
  }
}
