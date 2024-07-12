import 'dart:developer';
import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/models.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_audio_insertable.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_drafts_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_form_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_voice_effects_provider.dart';
import 'package:arre_frontend_flutter/providers/user_voicepods_provider.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/src/mixins.dart';
import '../../utils/utils.dart';
import 'cs_bg_music_provider.dart';

const _LOG = "CREATOR_STUDIO_PROVIDER";
final creatorStudioProvider =
    ChangeNotifierProvider.autoDispose<CreatorStudioProvider>((ref) {
  return CreatorStudioProvider(ref);
});

class CreatorStudioProvider extends ValueNotifier<CSDraft> with CSLock {
  bool _isProModeEnabled = false;

  bool get isProModeEnabled => _isProModeEnabled;

  set isProModeEnabled(bool value) {
    if (value != isProModeEnabled) {
      _isProModeEnabled = value;
      notifyListeners();
    }
  }

  Set<CSFieldProvider> _csFieldProviders = Set<CSFieldProvider>();
  final ChangeNotifierProviderRef _ref;
  bool _isSubmitting = false;
  double sizeFactor = 1.0;
  ArreException? _curValidationError;

  // bool _isValid = false;
  late final TabController _tabController;

  CreatorStudioProvider(this._ref)
      : super(CSDraft(fileName: ArreFiles.instance.uniqueId())) {
    _initFieldProviders();
  }

  bool get isSubmitting => _isSubmitting;

  bool get isValid => _curValidationError == null;

  ArreException? get validationError => _curValidationError;

  bool get isRecordingTabShown => tabController.index == 0;

  TabController get tabController => _tabController;

  void showRecordingTab() {
    tabController.animateTo(0);
    notifyListeners();
  }

  void showFormTab() {
    tabController.animateTo(1);
    notifyListeners();
  }

  void init({required TickerProvider vsync}) {
    _tabController = TabController(
      length: 2,
      vsync: vsync,
    );
  }

  void _initFieldProviders() {
    _csFieldProviders.addAll([
      _ref.read(csActivityProvider),
      _ref.read(csFormProvider),
      _ref.read(csBgMusicProvider),
      _ref.read(csVoiceEffectsProvider),
      // _ref.read(csMoodProvider),
    ]);
  }

  ///Call this when an activity is run for a [kMinRecording] or a form field is changed or a draft is added
  ArreException? validate({bool shouldNotify = true}) {
    try {
      for (var fieldProvider in _csFieldProviders) {
        fieldProvider.validateWithException(value);
      }
      _curValidationError = null;
    } on CSValidationException catch (err) {
      _curValidationError = err;
    } catch (err, st) {
      Utils.reportError(err, st);
      _curValidationError =
          ArreException.key(AExceptionKey.CS_VALIDATION_ERROR);
    } finally {
      if (shouldNotify) notifyListeners();
    }
    if (_curValidationError != null) {
      arreAnalytics.logEvent(GAEvent.CS_DRAFT_VALIDATION_FAILED);
    }
    return _curValidationError;
  }

  // ///Compares [value] with latest changes. returns true if there are changes
  // Future<bool> hasChanges() async {
  //   final savedDraft = value;
  //   final currentDraft = await save(CSDraft());
  //   return !listEquals(currentDraft.activities, savedDraft.activities) ||
  //       currentDraft.voiceEffect != savedDraft.voiceEffect ||
  //       currentDraft.bgMusicEffect != savedDraft.bgMusicEffect ||
  //       currentDraft.title != savedDraft.title ||
  //       currentDraft.languageId != savedDraft.languageId ||
  //       currentDraft.mediaAttachment != savedDraft.mediaAttachment ||
  //       currentDraft.bgMusicEffect?.volume != savedDraft.bgMusicEffect?.volume;
  // }

  ///This internally unlocks CSLock, if any
  ///
  /// If [saveToDraft] is not provided, by default the data is saved to [value]
  ///
  /// If there is nothing to save, returns null.
  ///
  /// Following items are considered for saving any draft
  ///  - Activity
  ///  - Media attachment
  ///  - title
  Future<CSDraft?> save() async {
    for (var fieldProvider in _csFieldProviders) {
      await fieldProvider.exportToDraft(value);
    }
    if (value.activities.isEmpty &&
        !value.title.isValid &&
        value.mediaAttachment == null &&
        !_ref.read(csActivityProvider).isRunning) {
      await _ref.read(csDraftsProvider).delete(value);
      return null;
    } else {
      await _ref.read(csDraftsProvider).saveDraft(value);
      return value;
    }
  }

  void import4mDraft(CSDraft draft) {
    draft.fileName ??= ArreFiles.instance.uniqueId();
    value = draft;
    for (var fieldProvider in _csFieldProviders) {
      fieldProvider.import4mDraft(value);
    }
  }

  Future<void> clear() async {
    for (var fieldProvider in _csFieldProviders) {
      await fieldProvider.clear();
    }
  }

  Future<void> createNewSession() async {
    value = CSDraft(fileName: ArreFiles.instance.uniqueId());
    import4mDraft(value);
  }

  Future<String?> getRawAudioFile() async {
    final draft = await save();
    if (draft == null) throw validate()!;
    final filePath = await CSDraftsProvider.getRawAudioFile(draft);
    if (filePath == null) return null;
    return AMediaService.instance.uploadFile(
      file: File(filePath),
      entity: MediaEntity.RawPodAudio,
    );
  }

  Future<String> getAudioFileWithEffects({
    bool applyBgMusic = true,
    bool applyVoiceEffect = true,
  }) async {
    final draft = await save();
    if (draft == null) throw validate()!;
    return CSDraftsProvider.getAudioFileWithEffects(
      draft,
      applyBgMusic: applyBgMusic,
      applyVoiceEffect: applyVoiceEffect,
    );
  }

  void _updateProviders(String postId) {
    _ref.invalidate(userVoicepodsProvider(arrePref.userId!));
  }

  Future<(String postId, String? message)> submit() async {
    if (_isSubmitting) {
      throw ArreException("Already submission is in progress. Please wait...");
    }
    try {
      await save();
      final validationError = validate(shouldNotify: false);
      if (validationError != null) {
        throw validationError;
      }
      List<String> imageMediaIds = [], videoMediaIds = [];
      final activityPvd = _ref.read(csActivityProvider);
      await activityPvd.lock(this);
      _isSubmitting = true;
      notifyListeners();
      Duration? podDuration;

      //Upload audio file
      final audioMediaIds = await Future.wait(
        [
          () async {
            final filePath = await getAudioFileWithEffects();
            podDuration = await SimpleAudioPlayerProvider2.getAudioFileDuration(
                    DeviceFileSource(filePath))
                .catchError((err) => null);
            return AMediaService.instance.uploadFile(
              file: File(filePath),
              entity: MediaEntity.PodAudio,
            );
          }(),
          getRawAudioFile(),
        ],
        eagerError: true,
      );
      final vpMediaId = audioMediaIds.first!; //It can never be null
      final rawAudioMediaId = audioMediaIds[1];

      try {
        final mediaAttachment = value.mediaAttachment;
        //Upload media files
        if (mediaAttachment != null) {
          final mediaId = await AMediaService.instance.uploadFile(
            file: await mediaAttachment.mediaFile.absolute,
            thumbnailFile: await mediaAttachment.thumbnailFile.absolute,
            entity: mediaAttachment.isImage
                ? MediaEntity.PodPicture
                : MediaEntity.PodVideo,
          );
          if (mediaAttachment.isImage) {
            imageMediaIds.add(mediaId);
          } else if (mediaAttachment.isVideo) {
            videoMediaIds.add(mediaId);
          } else {
            throw ArreException.key(AExceptionKey.FILE_FORMAT_NOT_SUPPORTED);
          }
        }
      } catch (err) {
        throw CSFormValidationException(
          "There was an error uploading the media attachment. Please try with another media",
          reason: err,
        );
      }

      final response = await ApiService.instance.createVoicepod(
        title: value.title!,
        duration: podDuration?.inSeconds ?? value.getDuration().inSeconds,
        communityId: value.communityId,
        bgMusic: value.bgMusicEffect?.id,
        pitch: value.voiceEffect?.id,
        audioMediaFiles: [vpMediaId],
        rawAudioMediaFiles: [if (rawAudioMediaId != null) rawAudioMediaId],
        insertables: value.activities
            .whereType<AudioInsertable>()
            .map((e) => e.id)
            .toList(),
        language: value.languageId!,
        visibility: value.postPrivacyV2!,
        hashtags: value.hashTags,
        imageMediaFiles: imageMediaIds,
        videoMediaFiles: videoMediaIds,
      );
      try {
        _updateProviders(response.$1);
        _ref.read(csDraftsProvider).delete(value);
      } catch (err, st) {
        Utils.reportError(err, st);
      }
      return response;
    } catch (err, st) {
      if (err is ArreException) {
        _curValidationError = err;
      }
      log("Error Creating the post ", error: err, name: _LOG);
      Utils.reportError(err, st);
      rethrow;
    } finally {
      _isSubmitting = false;
      notifyListeners();
    }
  }

  @override
  Future<bool> canReleaseLock() {
    if (isSubmitting) {
      throw CSLockException("Please wait while the post is submitted");
    }
    return SynchronousFuture(!_isSubmitting);
  }

  @override
  bool get isGlobalEffectOrActivity => true;

  @override
  Future<CSIntegralActivity?> releaseLock(_) {
    if (isSubmitting) {
      throw CSLockException("Please wait while the post is submitted");
    }
    return Future.value(null);
  }
}
