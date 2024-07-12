import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/models/src/cs_media_attachment.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/creator_studio_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_ffmpeg_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import '../../models/src/cs_models.dart';
import '../../utils/utils.dart';
import '../arre_files_provider.dart';

const _LOG = "CS_FORM_PROVIDER";

const kCSTitleMaxLength = 80;

final csPostModerationProvider =
    FutureProvider<ProfileModerationStatus>((ref) async {
  var moderationString = await ApiService.instance.getPostModerationStatus();
  return ProfileModerationStatus.getEnum4mString(moderationString);
});

final csLanguagesDataProvider = FutureProvider.autoDispose((ref) async {
  final languages = await ApiService.instance.getLanguages();
  ref.keepAlive();
  return languages;
});

final csHashtagsDataProvider = FutureProvider.autoDispose((ref) async {
  final hashtags = await ApiService.instance.listTopHashtags();
  ref.keepAlive();
  return hashtags.map((e) => "#${e.hashTagName}");
});

final csFormProvider = ChangeNotifierProvider<CSFormProvider>((ref) {
  return CSFormProvider(ref);
});

class CSFormProvider with ChangeNotifier, CSFieldProvider {
  final ChangeNotifierProviderRef _ref;
  final TextEditingController titleTextEditingCtrl = TextEditingController();
  final titleFieldFocusNode = FocusNode();
  LengthLimitingTextInputFormatter titleLengthLimitFormatter =
      LengthLimitingTextInputFormatter(
    kCSTitleMaxLength,
    maxLengthEnforcement: MaxLengthEnforcement.enforced,
  );
  final _titleTextUpdates = StreamController<TextEditingValue>();
  String _postPrivacy = "public";
  Set<String> _selectedHashtags = {};
  CSMediaAttachment? _mediaAttachment;
  bool _isProcessingThumbnail = false;

  CSMediaAttachment? get mediaAttachment => _mediaAttachment;

  String? _languageId;
  String? _communityId;
  bool _wasTextFieldEmpty = true;

  CSFormProvider(this._ref) {
    titleTextEditingCtrl
        .addListener(() => _titleTextUpdates.add(titleTextEditingCtrl.value));
    _titleTextUpdates.stream
        .debounceTime(Duration(milliseconds: 350))
        .listen(_onTitleTextChanges);
    titleFieldFocusNode.addListener(() {
      if (!titleFieldFocusNode.hasFocus) {
        _ref.read(creatorStudioProvider)
          ..save()
          ..validate();
      }
    });
  }

  String? get languageId => _languageId;

  String? get communityId => _communityId;

  bool get isProcessingThumbnail => _isProcessingThumbnail;

  String get postPrivacy => _postPrivacy;

  int get currentLength => titleTextEditingCtrl.value.text.characters.length;

  set postPrivacy(String value) {
    if (value == "communityOnly" && communityId == null) {
      throw ArreException.key(AExceptionKey.COMMUNITY_NOT_SELECTED);
    }
    _postPrivacy = value;
    _ref.read(creatorStudioProvider)
      ..save()
      ..validate();
    notifyListeners();
  }

  void unFocusForm() {
    titleFieldFocusNode.unfocus();
  }

  void _titleTextFieldNonEmptyValidator(TextEditingValue value) {
    if (_wasTextFieldEmpty && value.text.trim().isNotEmpty) {
      _wasTextFieldEmpty = false;
      _ref.read(creatorStudioProvider).validate();
    } else if (!_wasTextFieldEmpty && value.text.trim().isEmpty) {
      _wasTextFieldEmpty = true;
      _ref.read(creatorStudioProvider).validate();
    }
  }

  void _onTitleTextChanges(TextEditingValue value) {
    final hashtagMatches =
        RegExp(r'(#[A-Za-z\d-_]+)(?:#[A-Za-z\d-_]+)*').allMatches(value.text);
    final latestHashtags = hashtagMatches.map((e) {
      return value.text.substring(e.start, e.end);
    }).toSet();
    if (!setEquals(latestHashtags, _selectedHashtags)) {
      _selectedHashtags = latestHashtags;
      log("Hashtags changed to $latestHashtags", name: _LOG);
      notifyListeners();
    }
    _titleTextFieldNonEmptyValidator(value);
  }

  bool isHashtagSelected(String hashtag) {
    return _selectedHashtags.contains(hashtag);
  }

  TextEditingValue _setText(String newText) {
    final oldValue = titleTextEditingCtrl.value;
    final newValue = TextEditingValue(
      text: newText,
      selection:
          TextSelection.fromPosition(TextPosition(offset: newText.length)),
    );
    final truncated =
        titleLengthLimitFormatter.formatEditUpdate(oldValue, newValue);
    titleTextEditingCtrl.value = truncated;
    return truncated;
  }

  void modifyHashtags(String hashtag, bool isSelected) {
    String newText;
    final currentValue = titleTextEditingCtrl.value;
    if (isSelected) {
      String preSpacer = "", postSpacer = "";
      final characters = currentValue.text.characters;

      if (currentValue.selection.start > 0 &&
          characters.characterAt(currentValue.selection.start - 1) !=
              Characters(" ") &&
          currentValue.selection.start != 0) {
        preSpacer = " ";
      }

      if (currentValue.selection.end < characters.length - 1 &&
          characters.characterAt(currentValue.selection.end) !=
              Characters(" ")) {
        postSpacer = " ";
      }
      newText = currentValue.text.replaceRange(
        currentValue.selection.start.clamp(0, kCSTitleMaxLength),
        currentValue.selection.end.clamp(0, kCSTitleMaxLength),
        preSpacer + hashtag + postSpacer,
      );
    } else {
      newText = titleTextEditingCtrl.text.replaceAll(hashtag, "");
    }
    final truncated = _setText(newText);
    if (truncated.text.contains(hashtag)) {
      _selectedHashtags.add(hashtag);
    } else {
      _selectedHashtags.remove(hashtag);
    }
    notifyListeners();
  }

  void selectLanguage(String? language) {
    _languageId = language;
    notifyListeners();
    _ref.read(creatorStudioProvider)
      ..save()
      ..validate();
  }

  void setCommunityOrPrivacy(String privacyOrCommunityId) {
    if (["public", "private"].contains(privacyOrCommunityId)) {
      _communityId = null;
      postPrivacy = privacyOrCommunityId;
    } else {
      if (_communityId != privacyOrCommunityId) {
        _languageId = null;
      }
      _communityId = privacyOrCommunityId;
      postPrivacy = "public";
    }
    notifyListeners();
    _ref.read(creatorStudioProvider)
      ..save()
      ..validate();
  }

  Future<void> adjustImage() async {
    assert(_mediaAttachment != null);
    final croppedFilePath = await Utils.getCroppedImage(
      await (_mediaAttachment!.mediaFile.absolutePath),
      disableRotation: true,
    );
    log("Cropped image path ${Uri.file(await _mediaAttachment!.thumbnailFile.absolutePath)}",
        name: _LOG);
    if (croppedFilePath != null) {
      final newThumbnailFile = AFile(
        relativePath: ArreFiles.instance.generateCSMediaThumbnailRelativePath(
          filePathOrName: croppedFilePath,
          sessionId: _ref.read(csActivityProvider).sessionId,
        ),
        fileDirectory: _mediaAttachment!.fileDirectory,
      );
      await newThumbnailFile.createFile();
      await ArreFiles.instance.copyFile(
        File(croppedFilePath),
        newFilePath: await newThumbnailFile.absolutePath,
      );
      _mediaAttachment = _mediaAttachment!
          .copyWith(thumbnailRelativePath: newThumbnailFile.relativePath);
      _ref.read(creatorStudioProvider).save();
      log("Thumbnail absolute path ${Uri.file(await _mediaAttachment!.thumbnailFile.absolutePath)}",
          name: _LOG);
      notifyListeners();
    }
  }

  Future<void> pickMedia({
    required void Function(dynamic error) onError,
  }) async {
    try {
      _isProcessingThumbnail = true;
      notifyListeners();
      final pickedFile = await ArreFiles.pickMedia();
      if (pickedFile == null) return;

      final csSessionId = _ref.read(csActivityProvider).sessionId;
      final mediaAttachment = ArreFiles.instance
          .generateCSMediaAttachment(csSessionId, pickedFile.path);

      if (!(mediaAttachment.mimeType.contains("image") ||
          mediaAttachment.mimeType.contains("video"))) {
        throw CSFormValidationException(
            "We're sorry, the app doesn't support this media format yet. Please try with another image/video");
      }

      //Copy picked original file to media attachment file
      await mediaAttachment.mediaFile.createFile();
      final mediaFilePath = await mediaAttachment.mediaFile.absolutePath;
      await ArreFiles.instance.copyFile(
        pickedFile.absolute,
        newFilePath: mediaFilePath,
      );

      //Generate thumbnail file
      await mediaAttachment.thumbnailFile.createFile();
      if (mediaAttachment.mimeType.contains("image")) {
        //We allow user to crop the image file with aspect ratio 16:9 which will be set as thumbnail
        final croppedFilePath = await Utils.getCroppedImage(
          mediaFilePath,
          disableRotation: true,
        );
        await ArreFiles.instance.copyFile(
          File(croppedFilePath ?? mediaFilePath),
          newFilePath: await mediaAttachment.thumbnailFile.absolutePath,
        );
      } else if (mediaAttachment.mimeType.contains("video")) {
        await FFmpegProvider.instance.getThumbnail4mMedia(
          mediaFilePath,
          await mediaAttachment.thumbnailFile.absolutePath,
        );
      } else {
        throw ArreException.key(AExceptionKey.FILE_FORMAT_NOT_SUPPORTED);
      }
      arreAnalytics.logEvent(GAEvent.CS_MEDIA_ATTACHED);
      this._mediaAttachment = mediaAttachment;
      _ref.read(creatorStudioProvider).save();
      notifyListeners();
    } catch (err, st) {
      onError(err);
      Utils.reportError(err, st);
    } finally {
      _isProcessingThumbnail = false;
      notifyListeners();
    }
  }

  void clearMedia() {
    _mediaAttachment?.delete();
    _mediaAttachment = null;
    _ref.read(creatorStudioProvider).save();
    notifyListeners();
  }

  @override
  void import4mDraft(CSDraft draft) {
    _setText(draft.title ?? "");
    _languageId = draft.languageId;
    _communityId = draft.communityId;
    _mediaAttachment = draft.mediaAttachment;
    _postPrivacy = draft.postPrivacyV2 ?? postPrivacy;
    notifyListeners();
  }

  @override
  Future<void> exportToDraft(CSDraft draft) {
    draft.mediaAttachment = _mediaAttachment;
    draft.postPrivacyV2 = _postPrivacy;
    draft.languageId = _languageId;
    draft.communityId = _communityId;
    draft.title = titleTextEditingCtrl.text.validValue;
    return SynchronousFuture(null);
  }

  @override
  Future<void> clear() {
    //Restart is only for Activities
    return SynchronousFuture(null);
  }

  @override
  void validateWithException(CSDraft draft) {
    if (!titleTextEditingCtrl.text.isValid) {
      throw CSFormValidationException("Please enter the title");
    }
    if (languageId == null) {
      throw CSFormValidationException("Please select the language");
    }
    // if (postPrivacy == null) {
    //   throw CSFormValidationException("Please select the privacy");
    // }
  }

  @override
  void dispose() {
    titleFieldFocusNode.dispose();
    titleTextEditingCtrl.dispose();
    _titleTextUpdates.close();
    super.dispose();
  }
}
