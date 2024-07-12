import 'package:isar/isar.dart';

import 'cs_models.dart';

mixin CSDraftField {
  @Index()
  late int draftIsarId;
}

mixin CSIntegralActivity implements CSDraftField, CSAudioFile {
  Id isarId = Isar.autoIncrement;
  late int orderIndex;
  late ActivityType activityType;
  late int milliSeconds;
}

mixin CSAudioFile {
  @ignore
  Future<Uri> get uri;
}
