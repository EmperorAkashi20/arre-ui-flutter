import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:isar/isar.dart';

import 'cs_models.dart';
import 'mixins.dart';

part 'cs_audio_insertable.g.dart';

@Collection()
class AudioInsertable
    with CSDraftField, CSIntegralActivity, AFileFields, CSAudioFile {
  @override
  @enumerated
  final ActivityType activityType = ActivityType.insertable;
  final String id;
  final String name;
  final String iconUrl;
  final String musicUrl;
  final String filename;
  @Enumerated(EnumType.name)
  AFileDirectory? fileDirectory;
  String? relativePath;

  @ignore
  String get url => musicUrl;

  AudioInsertable({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.musicUrl,
    required this.filename,
    required this.relativePath,
    required this.fileDirectory,
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
}

extension AudioInsertableFerry on GAudioInsertablesData_response_data {
  AudioInsertable toAudioInsertable() {
    return AudioInsertable(
      id: id,
      name: name,
      iconUrl: iconUrl,
      musicUrl: musicUrl,
      filename: filename,
      fileDirectory: null,
      relativePath: null,
    );
  }
}
