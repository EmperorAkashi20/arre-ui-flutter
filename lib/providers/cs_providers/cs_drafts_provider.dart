import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:arre_frontend_flutter/local_db/local_db.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_audio_insertable.dart';
import 'package:arre_frontend_flutter/models/src/cs_bg_music_effect.dart';
import 'package:arre_frontend_flutter/models/src/cs_import_activity.dart';
import 'package:arre_frontend_flutter/models/src/cs_media_attachment.dart';
import 'package:arre_frontend_flutter/models/src/cs_mood.dart';
import 'package:arre_frontend_flutter/models/src/cs_voice_effect.dart';
import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_ffmpeg_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:isar/isar.dart';

import '../../models/models.dart';
import '../../models/src/cs_draft.dart';
import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/utils.dart';
import '../arre_files_provider.dart';

const _LOG = "CS_DRAFTS_PROVIDER";

final csDraftsProvider =
    ChangeNotifierProvider<CSDraftsProvider>((ref) => CSDraftsProvider());

class CSDraftsProvider with ChangeNotifier, CSLock {
  late Isar _isar;
  bool _isInitializing = true;

  Iterable<CSDraft>? _drafts;
  dynamic _error;
  CSDraft? _playingDraft;
  StreamSubscription? _dbChangesSub;
  bool _isLoadingPlay = false;

  CSDraftsProvider() {
    _init();
  }

  bool get isInitializing => _isInitializing;

  int get length => _drafts?.length ?? 0;

  bool get isLoadingPlay => _isLoadingPlay;

  CSDraft? get playingDraft => _playingDraft;

  Iterable<CSDraft>? get drafts => _drafts;

  final player = SimpleAudioPlayerProvider2("drafts_player");

  bool get hasError => _error != null;

  dynamic get error => _error;

  Future<void> _init() async {
    try {
      _isar = Isar.getInstance(ArreLocalDb.CS_DB_INSTANCE_V2) ??
          await Isar.open(
            [
              CSDraftSchema,
              CSMicActivitySchema,
              AudioInsertableSchema,
              BgMusicEffectSchema,
              VoiceEffectSchema,
              CSMediaAttachmentSchema,
              CSImportActivitySchema,
              MoodSchema,
            ],
            name: ArreLocalDb.CS_DB_INSTANCE_V2,
            directory: await ArreFiles.instance.getCSDbPathV2(),
          );
      await _initializeDrafts();
      _dbChangesSub =
          _isar.collection<CSDraft>().watchLazy().listen(_onDraftsDbChange);
    } finally {
      _isInitializing = false;
      notifyListeners();
    }
  }

  Future<void> _initializeDrafts() async {
    return _isar.txn(() async {
      _drafts = await _isar.cSDrafts.where().sortByUpdatedOnDesc().findAll();
      for (var draft in _drafts!) {
        await _initializeDraftData(_isar, draft);
      }
    });
  }

  Future<void> _onDraftsDbChange(_) async {
    await _initializeDrafts();
    notifyListeners();
  }

  Future<CSDraft?> recoverDraft(CSDraft draft) async {
    try {
      //Fix lost CS Integral Activities
      List<CSIntegralActivity> activities = [];
      for (final activity in draft.activities) {
        if (activity is CSMicActivity) {
          final file = await activity.aFile.absolute;
          if (await file.exists()) activities.add(activity);
        } else {
          activities.add(activity);
        }
      }
      draft.activities = activities;

      //Fix lost media attachment
      final mediaAttachment = draft.mediaAttachment;
      if (mediaAttachment != null) {
        if (!await (await mediaAttachment.mediaFile.absolute).exists() ||
            !await (await mediaAttachment.thumbnailFile.absolute).exists()) {
          draft.mediaAttachment = null;
        }
      }
      return draft;
    } catch (err) {
      throw ArreException.key(AExceptionKey.DRAFT_RECOVERY_FAILED);
    }
  }

  ///Verifies all the files exist and can produce the output from [getAudioFileWithEffects]
  ///
  /// If any of the file is corrupted/missing (eg. files from tmp folder), prompt the user with such error
  ///
  /// throws [CSFileNotFoundException], handle the exceptions in the UI accordingly
  Future<void> verifyDraft(CSDraft draft) async {
    log("Verifying Draft ${draft.isarId} ${draft.fileName}", name: _LOG);
    log(
        "Draft directory ${Uri.file([
          (await ArreFiles.instance.applicationSupportDir).path,
          "VoicepodDrafts",
          draft.fileName
        ].join(Platform.pathSeparator))}",
        name: _LOG);
    final micActivities = draft.activities.whereType<CSMicActivity>();
    for (final micActivity in micActivities) {
      final file = await micActivity.aFile.absolute;
      log("Activity ${micActivity.orderIndex} ${file.uri}", name: _LOG);
      if (!await file.exists()) {
        throw CSFileNotFoundException.key(
            AExceptionKey.MIC_RECORDING_FILE_NOT_FOUND);
      }
    }
    final mediaAttachment = draft.mediaAttachment;
    if (mediaAttachment != null) {
      log("Media attachment ${(await mediaAttachment.mediaFile.absolute).uri}",
          name: _LOG);
      log("Media attachment thumbnail ${(await mediaAttachment.thumbnailFile.absolute).uri}",
          name: _LOG);
      if (!await (await mediaAttachment.mediaFile.absolute).exists()) {
        throw CSFileNotFoundException.key(
            AExceptionKey.MEDIA_ATTACHMENT_FILE_NOT_FOUND);
      }
      if (!await (await mediaAttachment.thumbnailFile.absolute).exists()) {
        throw CSFileNotFoundException.key(
            AExceptionKey.MEDIA_ATTACHMENT_THUMBNAIL_FILE_NOT_FOUND);
      }
    }
    log("Verify Draft Successful ${draft.isarId} ${draft.fileName}",
        name: _LOG);
  }

  Future<void> playDraft(
    CSDraft draft, {
    required BuildContext context,
    required void Function(dynamic err) onError,
  }) async {
    if (_playingDraft == draft) return;
    try {
      _isLoadingPlay = true;
      _playingDraft = draft;
      notifyListeners();
      player.stop();
      if (draft.activities.isEmpty) {
        throw ArreException("No recordings found");
      }
      final outputFile = await getAudioFileWithEffects(draft);
      await player.init(DeviceFileSource(outputFile));
      if (context.mounted) player.play(PlayerGAContext.cs_draft);
    } catch (err, st) {
      _playingDraft = null;
      onError(err);
      Utils.reportError(err, st);
    } finally {
      _isLoadingPlay = false;
      notifyListeners();
    }
  }

  ///Applies all effects that Creator Studio offers & returns the output file path
  static Future<String> getAudioFileWithEffects(
    CSDraft draft, {
    bool applyBgMusic = true,
    bool applyVoiceEffect = true,
  }) async {
    final inputFiles =
        await Future.wait(draft.activities.map((e) => e.uri).toList());
    if (inputFiles.isEmpty) {
      throw CSActivityValidationException(
          "Please record for min ${kCSMinRecordingDuration.inSeconds} seconds");
    }
    final outputFilePath = await FFmpegProvider.instance.applyEffects(
      inputFiles: inputFiles,
      voiceEffectCommand:
          applyVoiceEffect ? draft.voiceEffect?.ffmpegCommand : null,
      bgFile: applyBgMusic ? await draft.bgMusicEffect?.uri : null,
      bgVolume: applyBgMusic ? draft.bgMusicEffect?.volume : null,
    );
    return outputFilePath;
  }

  ///Returns concatenation audio of mic & import activities
  static Future<String?> getRawAudioFile(CSDraft draft) async {
    final inputFiles = await Future.wait(draft.activities
        .where((element) =>
            element is CSMicActivity || element is CSImportActivity)
        .map((e) => e.uri)
        .toList());
    if (inputFiles.isEmpty) {
      return null;
    }
    final outputFilePath = await FFmpegProvider.instance.applyEffects(
      inputFiles: inputFiles,
    );
    return outputFilePath;
  }

  // int getDraftIndex(String sessionId) {
  //   return drafts!.toList().indexWhere((draft) => draft.sessionId == sessionId);
  // }

  Future<void> _initializeDraftData(Isar isar, CSDraft draft) async {
    List<CSIntegralActivity> micActivities = await isar.cSMicActivitys
        .filter()
        .draftIsarIdEqualTo(draft.isarId)
        .findAll();

    List<CSIntegralActivity> importActivities = await isar.cSImportActivitys
        .filter()
        .draftIsarIdEqualTo(draft.isarId)
        .findAll();

    List<CSIntegralActivity> insertableActivities = await isar.audioInsertables
        .filter()
        .draftIsarIdEqualTo(draft.isarId)
        .findAll();

    BgMusicEffect? bgMusicEffect = await isar.bgMusicEffects
        .filter()
        .draftIsarIdEqualTo(draft.isarId)
        .findFirst();

    VoiceEffect? voiceEffect = await isar.voiceEffects
        .filter()
        .draftIsarIdEqualTo(draft.isarId)
        .findFirst();

    Mood? mood =
        await isar.moods.filter().draftIsarIdEqualTo(draft.isarId).findFirst();

    CSMediaAttachment? mediaAttachment = await isar.cSMediaAttachments
        .filter()
        .draftIsarIdEqualTo(draft.isarId)
        .findFirst();

    final allActivities = [
      ...micActivities,
      ...importActivities,
      ...insertableActivities
    ]..sort((a, b) => a.orderIndex.compareTo(b.orderIndex));

    draft.activities = allActivities;
    draft.bgMusicEffect = bgMusicEffect;
    draft.voiceEffect = voiceEffect;
    draft.mediaAttachment = mediaAttachment;
    draft.mood = mood;
  }

  ///Saves current draft
  Future<CSDraft> saveDraft(CSDraft draft) async {
    return await _isar.writeTxn<CSDraft>(() async {
      draft.updatedOn = DateTime.now();
      Id isarId = await _isar.cSDrafts.put(draft);
      draft.isarId = isarId;
      for (int i = 0; i < draft.activities.length; i++) {
        draft.activities[i]
          ..draftIsarId = isarId
          ..orderIndex = i;
      }
      draft.voiceEffect?.draftIsarId = isarId;
      draft.bgMusicEffect?.draftIsarId = isarId;
      draft.mediaAttachment?.draftIsarId = isarId;
      draft.mood?.draftIsarId = isarId;

      await _isar.cSImportActivitys
          .where()
          .draftIsarIdEqualTo(draft.isarId)
          .deleteAll();
      await _isar.cSImportActivitys
          .putAll(draft.activities.whereType<CSImportActivity>().toList());

      await _isar.cSMicActivitys
          .where()
          .draftIsarIdEqualTo(draft.isarId)
          .deleteAll();
      await _isar.cSMicActivitys
          .putAll(draft.activities.whereType<CSMicActivity>().toList());

      await _isar.audioInsertables
          .where()
          .draftIsarIdEqualTo(draft.isarId)
          .deleteAll();
      await _isar.audioInsertables
          .putAll(draft.activities.whereType<AudioInsertable>().toList());

      //BG Music
      if (draft.bgMusicEffect != null) {
        await _isar.bgMusicEffects.put(draft.bgMusicEffect!);
      } else {
        await _isar.bgMusicEffects.deleteByDraftIsarId(draft.isarId);
      }

      //Voice effect
      if (draft.voiceEffect != null) {
        await _isar.voiceEffects.put(draft.voiceEffect!);
      } else {
        await _isar.voiceEffects.deleteByDraftIsarId(draft.isarId);
      }

      //Mood
      if (draft.mood != null) {
        await _isar.moods.put(draft.mood!);
      } else {
        await _isar.moods.deleteByDraftIsarId(draft.isarId);
      }

      //Media attachment
      if (draft.mediaAttachment != null) {
        await _isar.cSMediaAttachments.put(draft.mediaAttachment!);
      } else {
        await _isar.cSMediaAttachments.deleteByDraftIsarId(draft.isarId);
      }
      return draft;
    });
  }

  Future<void> delete(CSDraft draft) async {
    try {
      await _isar.writeTxn(() async {
        //Delete all associated mic activities
        await _isar.cSMicActivitys
            .where()
            .draftIsarIdEqualTo(draft.isarId)
            .deleteAll();

        //Delete all insertables activities
        await _isar.audioInsertables
            .where()
            .draftIsarIdEqualTo(draft.isarId)
            .deleteAll();

        //Delete voice effect
        if (draft.voiceEffect != null) {
          await _isar.voiceEffects.deleteByDraftIsarId(draft.isarId);
        }

        //Delete bg music effect
        if (draft.bgMusicEffect != null) {
          await _isar.bgMusicEffects.deleteByDraftIsarId(draft.isarId);
        }

        if (draft.mood != null) {
          await _isar.moods.deleteByDraftIsarId(draft.isarId);
        }

        //Delete media attachment
        if (draft.mediaAttachment != null) {
          await _isar.cSMediaAttachments.deleteByDraftIsarId(draft.isarId);
        }

        //Delete CSDraft
        await _isar.cSDrafts.delete(draft.isarId);

        //Delete cached files
        _deleteAllFiles(draft);
      });
    } catch (err, st) {
      log("Failed to delete the draft (sessionId: $draft)", error: err);
      Utils.reportError(err, st);
    }
  }

  Future<void> _deleteAllFiles(CSDraft draft) async {
    if (draft.fileName != null) {
      ArreFiles.instance.deleteDraftSession(draft.fileName!);
    } else {
      draft.activities.whereType<CSMicActivity>().forEach((element) async {
        (await element.aFile.absolute).delete();
      });
      (await draft.mediaAttachment?.mediaFile.absolute)?.delete();
      (await draft.mediaAttachment?.thumbnailFile.absolute)?.delete();
    }
  }

  @override
  Future<bool> canReleaseLock() {
    return Future.value(true);
  }

  @override
  bool get isGlobalEffectOrActivity => true;

  @override
  Future<CSIntegralActivity?> releaseLock(_) {
    player.stop();
    _playingDraft = null;
    return Future.value(null);
  }

  @override
  void dispose() {
    player.dispose();
    _dbChangesSub?.cancel();
    _playingDraft = null;
    super.dispose();
  }
}
