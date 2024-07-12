import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'cs_bg_music_effect.g.dart';

@Collection(ignore: {"props", "stringify", "hashCode"})
class BgMusicEffect
    with CSDraftField, CSAudioFile, AFileFields, EquatableMixin {
  Id isarId = Isar.autoIncrement;
  final String id;
  final String name;
  final String iconUrl;
  final String musicUrl;
  final String filename;
  double? volume;

  @Enumerated(EnumType.name)
  AFileDirectory? fileDirectory;

  String? relativePath;

  @Index(replace: true, unique: true)
  late int draftIsarId;

  BgMusicEffect({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.musicUrl,
    required this.filename,
    this.volume,
  });

  @override
  @ignore
  Future<Uri> get uri async {
    final cacheFilePath = await aFile?.absolutePath;
    if (cacheFilePath != null) {
      return Uri.file(cacheFilePath);
    }
    return Uri.parse(musicUrl);
  }

  @override
  @ignore
  List<Object?> get props => [id, name, musicUrl, filename];
}

extension BgMusicEffectFerry on GBgMusicData_response_data {
  String get filename => musicUrl.split("/").last;

  BgMusicEffect toBgMusicEffect() {
    return BgMusicEffect(
      id: id,
      name: name,
      iconUrl: iconUrl,
      musicUrl: musicUrl,
      filename: filename,
    );
  }
}
