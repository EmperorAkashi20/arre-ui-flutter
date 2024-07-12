import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:isar/isar.dart';

import 'cs_models.dart';

part 'cs_import_activity.g.dart';

@Collection()
class CSImportActivity
    with CSDraftField, CSIntegralActivity, AFileFields, CSAudioFile {
  @override
  @enumerated
  final ActivityType activityType = ActivityType.imported;

  final int milliSeconds;

  String relativePath;

  @Enumerated(EnumType.name)
  AFileDirectory fileDirectory;

  CSImportActivity({
    required this.milliSeconds,
    required this.relativePath,
    required this.fileDirectory,
  });

  @ignore
  AFile get aFile =>
      AFile(relativePath: relativePath, fileDirectory: fileDirectory);

  @override
  @ignore
  Future<Uri> get uri async => Uri.file(await aFile.absolutePath);
}
