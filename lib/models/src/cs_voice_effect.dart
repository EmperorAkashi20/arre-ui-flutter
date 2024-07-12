import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

import 'mixins.dart';

part 'cs_voice_effect.g.dart';

@Collection(ignore: {"props", "stringify", "hashCode"})
class VoiceEffect with CSDraftField, EquatableMixin {
  Id isarId = Isar.autoIncrement;

  final String id;
  final String name;
  final String ffmpegCommand;
  final String iconUrl;

  @Index(replace: true, unique: true)
  late int draftIsarId;

  VoiceEffect({
    required this.id,
    required this.name,
    required this.ffmpegCommand,
    required this.iconUrl,
  });

  @override
  @ignore
  List<Object?> get props => [id, name, ffmpegCommand, iconUrl];
}

extension VoiceEffectFerry on GVoiceEffectsData_response_data {
  VoiceEffect toVoiceEffect() {
    return VoiceEffect(
      id: id,
      name: name,
      ffmpegCommand: ffmpegCommand,
      iconUrl: iconUrl,
    );
  }
}
