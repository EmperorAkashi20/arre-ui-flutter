import 'dart:async';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/graphql/graphql_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import '../utils/Firebase Analytics/firebase_analytics_service.dart';

final updateOnboardingFutureProvider = FutureProvider.autoDispose.family<
    GUpdateOnboardingInfoData_response_data,
    (String username, String gender)>((ref, info) async {
  final userId = arrePref.userId!;
  final value = await ApiService.instance.updateOnboardingInfo(
    userId: userId,
    username: info.$1,
    gender: info.$2,
    languagesCsv:
        (arrePref.getStringList(PrefKey.LANGUAGE_PREFERENCES) ?? []).join(", "),
  );
  await arrePref.setBool(PrefKey.IS_ONBOARDING_COMPLETE, true);
  await arrePref.setString(PrefKey.USER_NAME, info.$1);
  arreAnalytics.logSignup();
  ref.invalidate(userProfileProvider(userId));
  ref.read(userShortDataProvider).refresh(userId);
  return value;
});

final usernameProvider =
    ChangeNotifierProvider.autoDispose((ref) => UsernameProvider());

class UsernameProvider with ChangeNotifier {
  final usernameRegexp = RegExp("^[a-z0-9_.]*");
  Completer<String>? _usernameCompleter;
  bool _isValid = false;
  late final usernameTextEditCtrl = TextEditingController();
  final _usernameTextStreamCtrl = StreamController<String>();
  final textFieldKey = GlobalKey<FormFieldState>();
  Map<String, bool?> _usernameAvailability = {};
  bool _validateTextLengthLimit = false, _validateSpecialCharacters = false;
  bool? _validateUnique = false;

  bool? get validateUnique => _validateUnique;

  bool get validateSpecialCharacters => _validateSpecialCharacters;

  bool get validateTextLengthLimit => _validateTextLengthLimit;

  bool get isLoading => _usernameCompleter?.isCompleted == false;

  String get value => usernameTextEditCtrl.text.trim();

  UsernameProvider() {
    _usernameTextStreamCtrl.stream
        .debounceTime(Duration(milliseconds: 300))
        .distinctUnique()
        .listen(_checkUsernameAvailability);
  }

  bool get isValid => _isValid;

  void _checkUsernameAvailability(String text) {
    if (textFieldKey.currentState?.isValid != true) return;
    if (text == arrePref.userName) {
      _usernameAvailability[text] = true;
      return;
    }
    ApiService.instance.checkUsernameAvailability(text).then((value) {
      _usernameAvailability[text] = value;
      onUsernameChanged(usernameTextEditCtrl.text);
    }).catchError((err, st) {
      if (err is ArreApiException &&
          err.errorCodeForClient == "usernameAlreadyTaken") {
        _usernameAvailability[text] = false;
        onUsernameChanged(usernameTextEditCtrl.text);
        if (text == usernameTextEditCtrl.text) {
          textFieldKey.currentState?.validate();
        }
      } else {
        Utils.reportError(err, st);
      }
    });
  }

  Future<String> checkAvailability() async {
    if (isLoading) return _usernameCompleter!.future;
    final completer = Completer<String>();
    () async {
      try {
        final username = value;
        final validationError = usernameValidator(usernameTextEditCtrl.text);
        if (validationError != null) {
          throw ArreException(validationError);
        }
        final errorText = textFieldKey.currentState!.errorText;
        if (errorText != null) {
          throw ArreException(errorText);
        }
        _usernameCompleter = completer;
        notifyListeners();
        final isAvailable =
            await ApiService.instance.checkUsernameAvailability(username);
        _usernameAvailability[username] = isAvailable;
        textFieldKey.currentState?.validate();
        if (!isAvailable) {
          throw ArreException("Username not available");
        }
        completer.complete(username);
      } catch (err, st) {
        completer.completeError(err, st);
        Utils.reportError(err, st);
      } finally {
        notifyListeners();
      }
    }();
    return completer.future;
  }

  String? usernameValidator(String? value) {
    _validateTextLengthLimit =
        value != null && value.trim().length >= 5 && value.trim().length <= 15;

    _validateSpecialCharacters =
        value != null && usernameRegexp.hasMatch(value);

    if (value != null && _usernameAvailability.containsKey(value)) {
      _validateUnique = _usernameAvailability[value] == true;
    } else {
      _validateUnique = null;
    }

    if (!_validateTextLengthLimit) {
      return "Text length should be between 5-15 characters";
    }
    if (!_validateSpecialCharacters) {
      return "No special characters are allowed";
    }
    if (_usernameAvailability[value] == false) {
      return "Username not available";
    }
    return null;
  }

  void onUsernameChanged(String value) {
    usernameValidator(value);
    _usernameTextStreamCtrl.add(value);
    final isValid = textFieldKey.currentState?.isValid;
    if (_isValid != isValid && isValid != null) {
      _isValid = isValid;
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _usernameTextStreamCtrl.close();
    usernameTextEditCtrl.dispose();
    super.dispose();
  }
}
