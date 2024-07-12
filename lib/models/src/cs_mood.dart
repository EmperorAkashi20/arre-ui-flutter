import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:isar/isar.dart';

part 'cs_mood.g.dart';

@Collection()
class Mood with CSDraftField {
  Id isarId = Isar.autoIncrement;
  final String id;
  final String name;
  final String iconUrl;
  final String caption;
  final String gifUrl;
  final List<String> backgroundImages;

  @Index(replace: true, unique: true)
  late int draftIsarId;

  Mood({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.caption,
    required this.gifUrl,
    required this.backgroundImages,
  });
}

extension MoodFerry on GMood {
  Mood toMood() {
    return Mood(
      id: id,
      name: name,
      iconUrl: iconUrl,
      caption: caption,
      gifUrl: gifUrl,
      backgroundImages: backgroundImages.toList(),
    );
  }
}
