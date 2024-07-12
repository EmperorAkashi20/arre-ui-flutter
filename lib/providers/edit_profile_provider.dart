import 'dart:async';
import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'arre_files_provider.dart';
import 'cs_providers/cs_ffmpeg_provider.dart';
import 'package:path/path.dart' as path;

//
// enum EditU1Section {
//   personalDetails(
//     description: "",
//     analyticsEvent: GAEvent.PROFILE_COMPLETION_PERSONAL_DETAILS,
//   ),
//   profilePicture(
//     description:
//         "Join the 90% who stand out with a profile picture – update yours now!",
//     analyticsEvent: GAEvent.PROFILE_COMPLETION_DISPLAY_PICTURE,
//   ),
//   socialAccounts(
//     description:
//         "Expand your reach by 70% – profiles with social accounts gain more visibility!",
//     analyticsEvent: GAEvent.PROFILE_COMPLETION_SOCIAL_ACCOUNTS,
//   ),
//   voiceBio(
//     description: "Profiles with voice bio tend to engage better with listeners",
//     analyticsEvent: GAEvent.PROFILE_COMPLETION_AUDIO_BIO,
//   );
//
//   const EditU1Section({
//     required this.description,
//     required this.analyticsEvent,
//   });
//
//   final String description, analyticsEvent;
// }

class EditProfileDraft {
  String? userName;
  String? name;
  String? bio;
  String? website;
  String? twitterHandle;
  String? linkedInHandle;
  String? instagramHandle;
  String? profilePictureMediaId;
  String? voiceBioMediaId;
  String? voiceBioFilePath;
  bool displaySocialHandles;

  String? _imageFilePath;

  String? get imageFilePath => _imageFilePath;

  String? _thumbnailPath;

  String? get thumbnailPath => _thumbnailPath;

  String? get firstName => name?.split(" ").firstOrNull;

  String? get lastName {
    final names = name?.split(" ");
    if ((names?.length ?? 0) <= 1) return null;
    return names?.skip(1).join(" ");
  }

  EditProfileDraft({
    required this.userName,
    required this.displaySocialHandles,
    this.name,
    this.bio,
    this.website,
    this.twitterHandle,
    this.instagramHandle,
    this.linkedInHandle,
    this.profilePictureMediaId,
    this.voiceBioMediaId,
  });
}

final editProfileProvider = ChangeNotifierProvider((ref) {
  ref.watch(currentUserProvider);
  return EditProfileProvider();
});

class EditProfileProvider with ChangeNotifier, _ProfilePictureField {
  late GUserDetails userDetails;
  Completer<String>? _submitCompleter;

  // EditU1Section _activeSection = EditU1Section.personalDetails;

  late (bool hasChanges, Future<void> Function() save) Function()
      voiceBioSaveCallback;

  BuildContext? currentFormContext;
  final formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  final bioTextEditingCtrl = TextEditingController();

  // bool _isSubmitting = false;

  late EditProfileDraft draft;

  // EditU1Section get activeSection => _activeSection;

  AutovalidateMode get autovalidateMode => _autovalidateMode;

  // bool get enableU1Experiment => userDetails.isIncompleteProfile;

  bool get isSubmitting => _submitCompleter?.isCompleted == false;

  void initDraft(GUserDetails userDetails) {
    String? fullName = Utils.getFullName(
        firstName: userDetails.firstname, lastName: userDetails.lastname);
    this.userDetails = userDetails;
    draft = EditProfileDraft(
      userName: userDetails.username,
      name: fullName,
      bio: userDetails.profile?.bio,
      voiceBioMediaId: userDetails.profile?.audioBioMediaId.validValue,
      website: userDetails.profile?.website,
      instagramHandle: userDetails.profile?.instagramHandle,
      twitterHandle: userDetails.profile?.twitterHandle,
      linkedInHandle: userDetails.profile?.linkedinHandle,
      displaySocialHandles: true,
      profilePictureMediaId: userDetails.profilePictureMediaId.validValue,
    );
  }

  void changeSocialVisibility(bool? visible) {
    draft.displaySocialHandles = visible ?? true;
    notifyListeners();
  }

  bool hasChanges() {
    if (currentFormContext != null) {
      Form.maybeOf(currentFormContext!)?.save();
    }
    formKey.currentState?.save();
    return voiceBioSaveCallback().$1 ||
        draft.firstName.validValue != userDetails.firstname.validValue ||
        draft.lastName.validValue != userDetails.lastname.validValue ||
        draft.userName.validValue != userDetails.username.validValue ||
        draft.bio.validValue != userDetails.profile?.bio.validValue ||
        draft.website.validValue != userDetails.profile?.website.validValue ||
        draft.twitterHandle.validValue !=
            userDetails.profile?.twitterHandle.validValue ||
        draft.instagramHandle.validValue !=
            userDetails.profile?.instagramHandle.validValue ||
        draft.linkedInHandle.validValue !=
            userDetails.profile?.linkedinHandle.validValue ||
        draft.profilePictureMediaId.validValue !=
            userDetails.profilePictureMediaId.validValue ||
        draft.displaySocialHandles !=
            (userDetails.profile == null ||
                userDetails.profile?.socialHandlesVisibility == "public") ||
        draft.imageFilePath != null;
  }

  Future<String?> saveAndExit() {
    // if (!draft.name.isValid) {
    //   draft.firstName = null;
    // }
    // if (!draft.lastName.isValid) {
    //   draft.lastName = null;
    // }
    if (!draft.userName.isValid) {
      draft.userName = null;
    }
    if (!Utils.isValidTwitterUsername(draft.twitterHandle)) {
      draft.twitterHandle = null;
    }
    if (!Utils.isValidInstaUsername(draft.instagramHandle)) {
      draft.instagramHandle = null;
    }
    if (!Utils.isValidLinkedInUsername(draft.linkedInHandle)) {
      draft.linkedInHandle = null;
    }
    return submit(validate: false);
  }

  void onFormChanged() {
    final wasValid = hasFilledRequiredFields();
    formKey.currentState?.save();
    final isValid = hasFilledRequiredFields();
    if (wasValid != isValid) notifyListeners();
  }

  String? hasFilledRequiredFields() {
    if (!draft.name.isValid) {
      return "Please enter name";
    }
    if (!draft.profilePictureMediaId.isValid &&
        !(draft.imageFilePath.isValid && draft.thumbnailPath.isValid)) {
      return "Please upload profile picture";
    }
    if (!draft.voiceBioMediaId.isValid && !draft.voiceBioFilePath.isValid) {
      return "Please record your voice bio";
    }
    return null;
  }

  //
  // String? validateSection(EditU1Section? section) {
  //   switch (section) {
  //     case EditU1Section.personalDetails:
  //       if (!draft.firstName.isValid) {
  //         return "Please enter first name";
  //       } else if (!draft.lastName.isValid) {
  //         return "Please enter last name";
  //       } else if (!draft.userName.isValid) {
  //         return "Please enter valid username";
  //       }
  //       return null;
  //     case EditU1Section.profilePicture:
  //       if (!draft.profilePictureMediaId.isValid &&
  //           !(draft.imageFilePath.isValid && draft.thumbnailPath.isValid)) {
  //         return "Please upload profile picture";
  //       }
  //       return null;
  //     case EditU1Section.socialAccounts:
  //       final hasAnyValidSocial = [
  //             Utils.isValidTwitterUsername(draft.twitterHandle),
  //             Utils.isValidInstaUsername(draft.instagramHandle),
  //             Utils.isValidLinkedInUsername(draft.linkedInHandle)
  //           ].where((element) => element).length >=
  //           1;
  //       if (!hasAnyValidSocial) {
  //         return "Please enter minimum 1 social account";
  //       }
  //       return null;
  //     case EditU1Section.voiceBio:
  //       return null;
  //     case null:
  //       for (var sec in EditU1Section.values) {
  //         final validation = validateSection(sec);
  //         if (validation != null) {
  //           return validation;
  //         }
  //       }
  //       return null;
  //   }
  // }

  ///If returns null, it's the end of form sections
  // EditU1Section? getNextSection() {
  //   final curIndex = EditU1Section.values.indexOf(_activeSection);
  //   if (curIndex == EditU1Section.values.length - 1) return null;
  //   return EditU1Section.values[curIndex + 1];
  // }
  //
  // void gotoPrevSection() {
  //   if (currentFormContext != null) {
  //     Form.maybeOf(currentFormContext!)?.save();
  //   }
  //   final curIndex = EditU1Section.values.indexOf(_activeSection);
  //   if (curIndex == 0) return null;
  //   _activeSection = EditU1Section.values[curIndex - 1];
  //   notifyListeners();
  // }

  // Future<void> nextOrSubmit({
  //   required void Function(String? message) onSubmitSuccess,
  //   required void Function(dynamic error) onError,
  // }) async {
  //   arreAnalytics.logEvent(
  //     GAEvent.PROFILE_COMPLETION_PAGE_NEXT_BUTTON_CLIC,
  //     parameters: {"current_section": activeSection.analyticsEvent},
  //   );
  //   final formContext = currentFormContext;
  //   bool? isSectionValid;
  //   if (formContext != null) {
  //     Form.maybeOf(formContext)?.save();
  //     isSectionValid = Form.maybeOf(formContext)?.validate();
  //   }
  //   if (_activeSection == EditU1Section.voiceBio) {
  //     await voiceBioSaveCallback().$2();
  //   }
  //   if (isSectionValid == false) {
  //     arreAnalytics.logEvent(GAEvent.PROFILE_COMPLETION_PAGE_WARNING_TOAST);
  //     return;
  //   }
  //   final validationError = validateSection(_activeSection);
  //   if (validationError != null) {
  //     arreAnalytics.logEvent(GAEvent.PROFILE_COMPLETION_PAGE_WARNING_TOAST);
  //     onError(ArreException(validationError));
  //     return;
  //   }
  //   final nextSection = getNextSection();
  //   if (nextSection != null) {
  //     _activeSection = nextSection;
  //     notifyListeners();
  //   } else {
  //     submit(
  //       onSuccess: onSubmitSuccess,
  //       onError: onError,
  //     );
  //   }
  // }

  Future<String> submit({bool validate = true}) async {
    if (isSubmitting) return _submitCompleter!.future;

    final completer = Completer<String>();

    () async {
      try {
        _submitCompleter = completer;
        await voiceBioSaveCallback().$2();
        notifyListeners();
        if (validate) {
          if (!formKey.currentState!.validate()) {
            _autovalidateMode = AutovalidateMode.always;
            throw ArreIgnoreException("Please fill form with valid values");
          }
        }
        formKey.currentState!.save();
        arreAnalytics.logEvent(GAEvent.PROFILE_CHANGES_SUBMITTING);
        if (draft._imageFilePath != null) {
          draft.profilePictureMediaId = await AMediaService.instance.uploadFile(
            file: File(draft._imageFilePath!),
            thumbnailFile: File(draft._thumbnailPath!),
            entity: MediaEntity.UserProfilePicture,
            entityId: arrePref.userId!,
          );
          draft._imageFilePath = null;
        }
        if (draft.voiceBioFilePath != null) {
          draft.voiceBioMediaId = await AMediaService.instance.uploadFile(
            file: File(draft.voiceBioFilePath!),
            entity: MediaEntity.AudioBioClip,
            entityId: arrePref.userId!,
          );
          draft.voiceBioFilePath = null;
        }
        if (draft.userName != userDetails.username) {
          await ApiService.instance.updateUsername(username: draft.userName!);
        }
        final response = await ApiService.instance.updateUserProfile(
          bio: draft.bio,
          profilePictureMediaId: draft.profilePictureMediaId.validValue,
          voiceBioMediaId: draft.voiceBioMediaId,
          socialMediaVisibility: draft.displaySocialHandles,
          website: draft.website,
          instagramHandle: draft.instagramHandle,
          twitterHandle: draft.twitterHandle,
          linkedIdHandle: draft.linkedInHandle,
          firstName: draft.firstName,
          lastName: draft.lastName,
        );
        await arrePref.setBool(
            PrefKey.HAS_DISMISSED_PROFILE_COMPLETE_NUDGE, false);
        arreAnalytics.logEvent(GAEvent.PROFILE_CHANGES_SUBMIT_SUCCESS);
        completer.complete(response.message ?? "Profile updated");
      } catch (err, st) {
        completer.completeError(err, st);
        arreAnalytics.logEvent(GAEvent.PROFILE_CHANGES_SUBMIT_FAILED);
        Utils.reportError(err, st);
      } finally {
        notifyListeners();
      }
    }();

    return completer.future;
  }
}

mixin _ProfilePictureField on ChangeNotifier {
  bool get isSubmitting;

  EditProfileDraft get draft;

  void clearImage() {
    arreAnalytics.logEvent(GAEvent.PROFILE_COMPLETION_PAGE_DP_DISCARDED);
    if (isSubmitting) return;
    draft._imageFilePath = null;
    draft._thumbnailPath = null;
    draft.profilePictureMediaId = null;
    notifyListeners();
  }

  String addThumbnailSuffix(String filePath) {
    final extension = path.extension(filePath);
    final fileNameWithoutExtension =
        filePath.substring(0, filePath.length - extension.length);
    return '$fileNameWithoutExtension\_thumbnail$extension';
  }

  Future<void> pickMedia({
    required void Function(dynamic error) onError,
  }) async {
    arreAnalytics.logEvent(GAEvent.PICTURE_UPLOAD_BUTTON_CLICKED);
    if (isSubmitting) return;
    try {
      final pickedFile = await ArreFiles.pickMedia(FileType.image);
      if (pickedFile != null) {
        final croppedImage = await Utils.getCroppedImage(
          pickedFile.path,
          ratioX: 1,
          ratioY: 1,
          title: "Edit profile picture",
        );
        if (croppedImage == null) {
          throw ArreIgnoreException("Image crop cancelled");
        }

        final thumbnailImage = addThumbnailSuffix(croppedImage);
        await FFmpegProvider.instance
            .getThumbnail4mMedia(croppedImage, thumbnailImage);
        draft._imageFilePath = croppedImage;
        draft._thumbnailPath = thumbnailImage;
      }
    } catch (err, st) {
      onError(err);
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }
}

class InstagramHandleInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (Utils.isValidInstaUsername(newValue.text)) {
      return newValue;
    }
    final parsedUsername = Utils.parseInstaUsername(newValue.text);
    if (parsedUsername != null) {
      return TextEditingValue(
        text: parsedUsername,
        composing: TextRange.collapsed(parsedUsername.length),
        selection: TextSelection.collapsed(offset: parsedUsername.length),
      );
    }
    return newValue;
  }
}

class TwitterHandleInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (Utils.isValidTwitterUsername(newValue.text)) {
      return newValue;
    }
    final parsedUsername = Utils.parseTwitterUsername(newValue.text);
    if (parsedUsername != null) {
      return TextEditingValue(
        text: parsedUsername,
        composing: TextRange.collapsed(parsedUsername.length),
        selection: TextSelection.collapsed(offset: parsedUsername.length),
      );
    }
    return newValue;
  }
}

class LinkedInHandleInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (Utils.isValidLinkedInUsername(newValue.text)) {
      return newValue;
    }
    final parsedUsername = Utils.parseLinkedInUsername(newValue.text);
    if (parsedUsername != null) {
      return TextEditingValue(
        text: parsedUsername,
        composing: TextRange.collapsed(parsedUsername.length),
        selection: TextSelection.collapsed(offset: parsedUsername.length),
      );
    }
    return newValue;
  }
}
