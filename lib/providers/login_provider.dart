import 'dart:async';
import 'dart:io';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/arre_link_manager.dart';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:arre_frontend_flutter/providers/remote_config_manager.dart';
import 'package:arre_frontend_flutter/screens/language_selection_sheet.dart';
import 'package:arre_frontend_flutter/screens/onboarding_and_login/sign_up_phone_entry_screen.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_notification_gql/arre_notification_gql.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = ChangeNotifierProvider.autoDispose((ref) {
  return LoginProvider();
});

class CurrentArreUser {
  String? get authToken => arrePref.authToken;

  String? get userId => arrePref.userId;

  String? get userName => arrePref.userName;

  String? get phoneNumber => arrePref.getString(PrefKey.PHONE_NUMBER);
}

final currentUserProvider = Provider((ref) => CurrentArreUser());

final guestLoginProvider =
    FutureProvider.autoDispose<GGuestCredentials>((ref) async {
  final keepAlive = ref.keepAlive();
  try {
    String token = "";
    (String?, GlastAppLandingSourceType)? appLandingDetails;

    //Get token and app landing source details in parallel
    await Future.wait([
      LoginProvider._getFirebaseToken().then((value) => token = value),
      DeviceAppManager.instance
          .getAppLandingDetails()
          .then((value) => appLandingDetails = value)
          .catchError((err) => (null, GlastAppLandingSourceType.direct))
    ], eagerError: true);

    var onboardingFlow = arrePref.getString(PrefKey.ONBOARDING_FLOW);
    if (!onboardingFlow.isValid) {
      onboardingFlow = await RemoteConfigManager.instance.getString(
        RemoteConfigKey.ONBOARDING_FLOW,
        "listenerFlow",
      );
    }

    if (arrePref.getBool(PrefKey.CAN_SHOW_ADD_LANG_SHEET) == null) {
      arrePref.setBool(PrefKey.CAN_SHOW_ADD_LANG_SHEET, true);
    }

    arreAnalytics.setUserProperty(UserProperty.ONBOARDING_FLOW, onboardingFlow);

    final guestCredentials = await ApiService.instance.loginAsGuest(
      secureToken: token,
      operatingSystem: Platform.operatingSystem,
      device: "",
      landingLink: appLandingDetails?.$1,
      landingSource: appLandingDetails?.$2.name,
      onboardingFlow: onboardingFlow,
    );

    arreAnalytics.setUserId(guestCredentials.userId);

    await arrePref.setString(PrefKey.ONBOARDING_FLOW, onboardingFlow);
    await arrePref.setString(PrefKey.AUTH_TOKEN, guestCredentials.authToken);
    await arrePref.setString(PrefKey.USER_NAME, guestCredentials.username);
    await arrePref.setString(PrefKey.PROFILE_PICTURE_MEDIA_ID,
        guestCredentials.profilePictureMediaId);
    await arrePref.setString(PrefKey.USER_ID, guestCredentials.userId);
    await arrePref.setBool(PrefKey.IS_ONBOARDING_COMPLETE, false);
    arreAnalytics.logLogin("guest");
    return guestCredentials;
  } catch (err) {
    rethrow;
  } finally {
    keepAlive.close();
  }
});

///Ensure Authenticated
final ensureAuthenticated = FutureProvider.autoDispose<bool>((ref) async {
  final keepAlive = ref.keepAlive();
  try {
    if (arrePref.userId == null || arrePref.authToken == null) {
      await ref.read(guestLoginProvider.future);
    }
  } catch (err) {
    keepAlive.close();
    rethrow;
  }
  ref.invalidate(currentUserProvider);
  ArreNavigator.instance.refresh();
  return true;
});

///Ensure Authenticated. But does not refresh the Navigator
final ensureAuthenticatedV2 = FutureProvider.autoDispose<bool>((ref) async {
  final keepAlive = ref.keepAlive();
  try {
    if (arrePref.userId == null || arrePref.authToken == null) {
      await ref.read(guestLoginProvider.future);
    }
  } catch (err) {
    keepAlive.close();
    rethrow;
  }
  ref.invalidate(currentUserProvider);
  return true;
});

///Ensure Languages are selected
final ensureLanguagesSelected = FutureProvider.autoDispose
    .family<List<String>, bool>((ref, showMultiSelect) async {
  final aliveLink = ref.keepAlive();
  List<String>? languages;
  try {
    await ref.read(ensureAuthenticated.future);
    if (arrePref.containsKey(PrefKey.LANGUAGE_PREFERENCES)) {
      languages = arrePref.getStringList(PrefKey.LANGUAGE_PREFERENCES);
    } else {
      //For Backward compatibility
      languages = await ApiService.instance.getUserLanguages(arrePref.userId!);
    }
    if (languages == null ||
        languages.isEmpty ||
        (arrePref.getBool(PrefKey.CAN_SHOW_ADD_LANG_SHEET) == true &&
            showMultiSelect)) {
      arrePref.setBool(PrefKey.CAN_SHOW_ADD_LANG_SHEET, false);
      languages = await showLanguageSelectionSheet();
    }
    if (languages == null || languages.isEmpty) {
      throw ArreException(
        "Please select languages to continue",
        code: AExceptionKey.NO_LANGUAGE_SELECTED,
      );
    }
  } catch (err) {
    aliveLink.close();
    rethrow;
  }
  return languages;
});

///Ensure Onboarded with Phone number login, username & gender fields entry
final ensureOnboarded = FutureProvider.autoDispose<bool>((ref) async {
  final aliveLink = ref.keepAlive();
  try {
    print("#DEBUGGING_ONBOARDING FutureProvider ensureOnboarded init");
    await ref.read(ensureLanguagesSelected(false).future);
    if (!Utils.isUserOnboarded) {
      await showLoginSheet(ref);
    }
  } catch (err) {
    aliveLink.close();
    rethrow;
  }
  print(
      "#DEBUGGING_ONBOARDING FutureProvider ensureOnboarded complete with success");
  return true;
});

final ensureOnboardedWithAppStateChange = FutureProvider.autoDispose<bool>(
  (ref) async {
    final aliveLink = ref.keepAlive();
    try {
      final isOnboarded = await ref.read(ensureOnboarded.future);
      ArreNavigator.instance.refresh();
      return isOnboarded;
    } catch (err) {
      aliveLink.close();
      rethrow;
    }
  },
);

class LoginProvider with ChangeNotifier {
  bool _hasAgreedToTerms = true;

  bool get hasAgreedToTerms => _hasAgreedToTerms;

  final userIdentifierTextEditCtrl =
      TextEditingController(text: kDebugMode ? "7026210672" : null);
  final otpTextEditCtrl =
      TextEditingController(text: kDebugMode ? "161803" : null);
  Completer<GVerifyOtpResponse>? _verifyCompleter;
  Completer<void>? _sendOtpCompleter;
  bool _isPhoneNumberValid = false,
      _isOtpValid = false,
      _isUserIdentifierValid = false;
  Object? _otpError;

  GPreferredOTPProviderEnum _otpProvider = GPreferredOTPProviderEnum.SMS;
  final phoneField = GlobalKey<FormFieldState>();
  final userIdentifierField = GlobalKey<FormFieldState>();
  final otpField = GlobalKey<FormFieldState>();

  GVerifyOtpResponse? _verifyOtpResponse;

  bool get hasOtpError => _otpError != null;

  bool get isPhoneFieldValid => _isPhoneNumberValid;

  bool get isUserIdentifierValid => _isUserIdentifierValid;

  bool get isOtpFieldValid => _isOtpValid;

  GPreferredOTPProviderEnum get otpProvider => _otpProvider;

  GVerifyOtpResponse? get data => _verifyOtpResponse;

  bool get isVerifying => _verifyCompleter?.isCompleted == false;

  bool get isSendingOtp => _sendOtpCompleter?.isCompleted == false;

  void onTermsAgreeChanged(bool? value) {
    _hasAgreedToTerms = value ?? false;
    notifyListeners();
  }

  static Future<String> _getFirebaseToken() async {
    final token = await (await FirebaseAuth.instance.signInAnonymously())
        .user!
        .getIdToken();
    if (token == null) {
      throw ArreException(
          "There is some trouble logging in, please try again later",
          code: AExceptionKey.FIREBASE_TOKEN_INVALID);
    }
    return token;
  }

  void changeOtpProvider(GPreferredOTPProviderEnum otpProvider) {
    _otpProvider = otpProvider;
    notifyListeners();
  }

  ///If [inviteLink] is null, [ArreLinkManager.instance.latestLink] is passed
  Future<void> sendOtp({String? inviteLink}) async {
    if (_sendOtpCompleter?.isCompleted == false)
      return _sendOtpCompleter!.future;
    final completer = Completer<void>();
    () async {
      try {
        otpTextEditCtrl.clear();
        _verifyCompleter
            ?.completeError(ArreIgnoreException("User requested OTP again"));
        _sendOtpCompleter = completer;
        notifyListeners();

        if (userIdentifierTextEditCtrl.text.trim().isEmpty) {
          throw ArreException("Please enter phone number");
        }
        await ApiService.instance.sendOtp(
          countryCode: "+91",
          userIdentifier: userIdentifierTextEditCtrl.text.trim(),
          secureToken: await _getFirebaseToken(),
          preferredOTPProvider: _otpProvider,
          inviteLinkUsed: inviteLink ?? arrePref.getString(PrefKey.INVITE_LINK),
        );
        completer.complete();
      } catch (err, st) {
        completer.completeError(err, st);
        Utils.reportError(err, st);
      } finally {
        _sendOtpCompleter = null;
        notifyListeners();
      }
    }();
    return completer.future;
  }

  Future<GVerifyOtpResponse> verifyOtp() async {
    if (isVerifying) return _verifyCompleter!.future;

    final completer = Completer<GVerifyOtpResponse>();
    () async {
      try {
        _verifyCompleter = completer;
        notifyListeners();
        final validationError = otpValidator(otpTextEditCtrl.text);
        if (validationError != null) {
          throw ArreException(validationError);
        }
        notifyListeners();
        _verifyOtpResponse = await ApiService.instance.verifyOtp(
          countryCode: "+91",
          userIdentifier: userIdentifierTextEditCtrl.text.trim(),
          secureToken: await _getFirebaseToken(),
          preferredOTPProvider: _otpProvider,
          operatingSystem: Platform.operatingSystem,
          device: "",
          otp: int.parse(otpTextEditCtrl.text),
        );
        arreAnalytics.logLogin("phone_number");
        await arrePref.setString(
            PrefKey.AUTH_TOKEN, _verifyOtpResponse!.authToken);
        await arrePref.setString(
            PrefKey.USER_NAME, _verifyOtpResponse!.username);
        await arrePref.setString(PrefKey.PROFILE_PICTURE_MEDIA_ID,
            _verifyOtpResponse!.profilePictureMediaId);
        await arrePref.setString(
            PrefKey.PHONE_NUMBER, _verifyOtpResponse!.phoneNumber);
        await arrePref.setString(PrefKey.USER_ID, _verifyOtpResponse!.userId);
        await arrePref.setBool(PrefKey.IS_ONBOARDING_COMPLETE,
            _verifyOtpResponse!.isOnboardingComplete);
        completer.complete(_verifyOtpResponse);
      } catch (err, st) {
        completer.completeError(err, st);
        Utils.reportError(err, st);
        _otpError = err;
      } finally {
        _verifyCompleter = null;
        notifyListeners();
      }
    }();

    return completer.future;
  }

  @override
  void dispose() {
    userIdentifierTextEditCtrl.dispose();
    otpTextEditCtrl.dispose();
    super.dispose();
  }

  void onOtpTextChanged(String value) {
    final isValid = otpValidator(value) == null;
    if (isValid != _isOtpValid) {
      _isOtpValid = isValid;
      notifyListeners();
    }
    if (_otpError != null) {
      _otpError = null;
      notifyListeners();
    }
  }

  void onUserIdentifierFieldChanged(String value) {
    final isValid = userIdentifierField.currentState?.isValid;
    if (isValid != _isUserIdentifierValid && isValid != null) {
      _isUserIdentifierValid = isValid;
      notifyListeners();
    }
  }

  void onPhoneFieldChanged(String value) {
    final isValid = phoneField.currentState?.isValid;
    if (isValid != _isPhoneNumberValid && isValid != null) {
      _isPhoneNumberValid = isValid;
      notifyListeners();
    }
  }

  String? otpValidator(String? value) {
    if (value == null) {
      return "Please enter OTP";
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return "Please enter valid OTP";
    }
    if (value.length != 6) {
      return "Enter 6 digit OTP";
    }
    return null;
  }

  String? userIdentifierValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter username or phone number";
    }
    return null;
  }

  String? phoneNumberValidator(String? value) {
    if (value == null) {
      return "Please enter phone number";
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return "Please enter valid number";
    }
    if (value.length != 10) {
      return "Enter 10 digit phone number";
    }
    return null;
  }
}

class PhoneFieldFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 10) {
      var output = newValue.text.replaceAll(RegExp(r'\D'), '').characters;
      if (oldValue.text.length < 10) {
        output = output.takeLast(10);
      }
      return TextEditingValue(
        text: output.string,
        composing: TextRange.collapsed(output.length),
        selection: TextSelection.collapsed(offset: output.length),
      );
    }
    return newValue;
  }
}

class PhoneFieldConditionalFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    RegExp letters = RegExp(r'[a-zA-Z._]');
    if (!letters.hasMatch(newValue.text) &&
        (newValue.text.length - oldValue.text.length) > 1) {
      String output = newValue.text
          .replaceAll(RegExp(r'\D'), '')
          .characters
          .takeLast(10)
          .toString();
      if (output.isNotEmpty) {
        return TextEditingValue(
          text: output,
          composing: TextRange.collapsed(output.length),
          selection: TextSelection.collapsed(offset: output.length),
        );
      }
    }
    return newValue;
  }
}
