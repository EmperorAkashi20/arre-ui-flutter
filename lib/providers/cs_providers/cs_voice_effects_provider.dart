import 'dart:developer';
import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/models/src/cs_voice_effect.dart';
import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/models.dart';
import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/utils.dart';
import 'creator_studio_provider.dart';
import 'cs_ffmpeg_provider.dart';
export 'cs_mixins.dart';

final voiceEffectsDataFutureProvider = FutureProvider.autoDispose((ref) async {
  final response = await ApiService.instance.getVoiceEffects();
  ref.keepAlive();
  return response;
});

final csVoiceEffectsProvider =
    ChangeNotifierProvider<CSVoiceEffectsProvider>((ref) {
  return CSVoiceEffectsProvider(ref);
});

class CSVoiceEffectsProvider with ChangeNotifier, CSLock, CSFieldProvider {
  String? _prevOutputFilePath;
  final ChangeNotifierProviderRef _ref;
  bool _isLoading = false;
  VoiceEffect? _selectedEffect, _appliedEffect;

  VoiceEffect? get selectedEffect => _selectedEffect;

  VoiceEffect? get appliedEffect => _appliedEffect;

  @override
  bool get isGlobalEffectOrActivity => true;

  CSVoiceEffectsProvider(this._ref);

  SimpleAudioPlayerProvider2 player = SimpleAudioPlayerProvider2("voice_filter");

  Future<void> playWithEffect(
    VoiceEffect effect, {
    void Function(dynamic err)? onError,
  }) async {
    log("Apply voice effect isLoading?$_isLoading");
    if (_isLoading) return;
    try {
      _isLoading = true;
      _selectedEffect = effect;
      notifyListeners();
      player.stop();
      await _ref.read(csActivityProvider).lock(this);
      final activities = _ref.read(csActivityProvider).activities;
      final inputFiles =
          await Future.wait(activities.map((e) => e.uri).toList());
      if (inputFiles.isEmpty) {
        throw ArreException("Please record something to preview the effect");
      }
      final outputFilePath = await FFmpegProvider.instance.applyEffects(
        voiceEffectCommand: effect.ffmpegCommand,
        inputFiles: inputFiles,
      );
      _deletePreviousFile(outputFilePath);
      await player.init(DeviceFileSource(outputFilePath));
      if (_selectedEffect != null) {
        player.play(PlayerGAContext.cs_voice_effect);
      }
    } catch (err, st) {
      _selectedEffect = null;
      onError?.call(err);
      print("Error Executing FFmpeg $err");
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void removeEffect() {
    if (_appliedEffect == null) return;
    applyOrRemoveEffect(_appliedEffect!);
  }

  void applyOrRemoveEffect(VoiceEffect effect) {
    if (_appliedEffect != effect) {
      _appliedEffect = effect;
    } else {
      _appliedEffect = null;
      if (_selectedEffect == effect) {
        dismiss();
      }
    }
    _ref.read(creatorStudioProvider).save();
    _ref.read(csActivityProvider).lock(this, releasePrevLock: false);
    notifyListeners();
  }

  // Future<void> _applyEffect(
  //   GVoiceEffectsData_response_data effect, {
  //   required void Function(dynamic err) onError,
  // }) async {
  //   if (_applyingEffect != null) return;
  //   try {
  //     _applyingEffect = effect;
  //
  //     await _ref.read(csActivityProvider).lock(this);
  //     if (_selectedEffect != effect) {
  //       player.stop();
  //       _selectedEffect = null;
  //     }
  //     _ref
  //         .read(csActivityProvider)
  //         .addEffectActivity(CSVoiceEffectsActivity.fromEffect(effect: effect));
  //   } catch (err, st) {
  //     onError(err);
  //     Utils.reportError(err, st);
  //     log("Error applying effect $effect", error: err, name: _LOG);
  //   } finally {
  //     _applyingEffect = null;
  //     notifyListeners();
  //   }
  // }

  Future<void> _deletePreviousFile(String newOutputFile) async {
    final prevFilePath = _prevOutputFilePath;
    if (prevFilePath != null && await File(prevFilePath).exists()) {
      await File(prevFilePath).delete();
    }
    _prevOutputFilePath = newOutputFile;
  }

  void dismiss() {
    _selectedEffect = null;
    player.stop();
    notifyListeners();
  }

  @override
  Future<bool> canReleaseLock() {
    return Future.value(true);
  }

  @override
  Future<CSIntegralActivity?> releaseLock(_) {
    dismiss();
    return Future.value(null);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Future<void> exportToDraft(CSDraft draft) {
    draft.voiceEffect = _appliedEffect;
    return SynchronousFuture(null);
  }

  @override
  void import4mDraft(CSDraft draft) {
    _appliedEffect = draft.voiceEffect;
    notifyListeners();
  }

  @override
  Future<void> clear() {
    //Restart is only for Activities
    dismiss();
    return SynchronousFuture(null);
  }

  @override
  String? validateWithException(CSDraft draft) {
    return null;
  }
}
