import 'package:arre_frontend_flutter/models/src/cs_voice_effect.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:isar/isar.dart';

import 'cs_bg_music_effect.dart';
import 'cs_media_attachment.dart';
import 'cs_mood.dart';
import 'mixins.dart';

part 'cs_draft.g.dart';

@collection
class CSDraft {
  Id isarId = Isar.autoIncrement;

  ///File name which will have all the media attachments and mic recordings stored withing this directory
  String? fileName;

  String? title;

  String? postPrivacyV2;

  @ignore
  List<CSIntegralActivity> activities;

  @ignore
  VoiceEffect? voiceEffect;

  @ignore
  BgMusicEffect? bgMusicEffect;

  @ignore
  Mood? mood;

  @ignore
  CSMediaAttachment? mediaAttachment;

  String? languageId;

  String? communityId;

  DateTime? updatedOn;

  List<String>? hashTags;

  // double? bgVolume;

  CSDraft({
    this.fileName,
    this.isarId = Isar.autoIncrement,
    this.title,
    this.activities = const <CSIntegralActivity>[],
    this.postPrivacyV2 = "public",
    this.languageId,
    this.updatedOn,
    // this.bgVolume,
    this.bgMusicEffect,
    this.voiceEffect,
    this.hashTags,
  });

  Duration getDuration() {
    int milliSeconds = 0;
    for (var activity in activities) {
      milliSeconds += activity.milliSeconds;
    }
    return Duration(
      milliseconds: milliSeconds.clamp(0, kCSRecordingDuration.inMilliseconds),
    );
  }

// CSDraft copyWith({
//   String? title,
//   List<CSIntegralActivity>? activities,
//   PostPrivacy? postPrivacy,
//   String? languageId,
//   String? media,
//   String? mediaThumbnail,
//   DateTime? updatedOn,
//   // double? bgVolume,
//   VoiceEffect? voiceEffect,
//   BgMusicEffect? bgMusicEffect,
//
// }) {
//   return CSDraft(
//     title: title ?? this.title,
//     activities: activities ?? this.activities,
//     postPrivacy: postPrivacy ?? this.postPrivacy,
//     languageId: languageId ?? this.languageId,
//     media: media ?? this.media,
//     mediaThumbnail: mediaThumbnail ?? this.mediaThumbnail,
//     updatedOn: updatedOn ?? this.updatedOn,
//     // bgVolume: bgVolume ?? this.bgVolume,
//     bgMusicEffect: bgMusicEffect ?? this.bgMusicEffect,
//     voiceEffect: voiceEffect ?? this.voiceEffect,
//   );
// }
}
