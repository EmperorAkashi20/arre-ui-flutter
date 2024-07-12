import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
export 'cs_mic_activity.dart';

// mixin CSGlobalActivityMixin on CSActivity {}
// mixin CSIntegralActivityMixin on CSActivity {
//   int get milliSeconds;
//
//   String get localPath;
// }
///IMPORTANT: Do not change the order
enum ActivityType { mic, insertable, imported }

// class CSIntegralActivity with CacheFile, CSDraftField {
//   Id isarId = Isar.autoIncrement;
//
//   ///Subclasses must implement this
//   late ActivityType activityType;
//   late int orderIndex;
//
//   int milliSeconds;
//
//   String? get localPath => throw UnimplementedError();
//
//   CSIntegralActivity({
//     this.milliSeconds = 0,
//   });
//
//   @override
//   String get url => throw UnimplementedError();
// }

mixin CSFieldProvider {
  ///Save the data to [draft]
  Future<void> exportToDraft(CSDraft draft);

  ///Validate the [draft]. throws [CSValidationException]
  void validateWithException(CSDraft draft);

  ///Get the values from [draft] and set it.
  void import4mDraft(CSDraft draft);

  Future<void> clear();
}

enum PostPrivacy {
  public(GPostVisibility.public),
  private(GPostVisibility.private);

  const PostPrivacy(this.backendValue);

  final GPostVisibility backendValue;
}

enum MediaType {
  image(0),
  video(1);

  const MediaType(this.backendValue);

  final int backendValue;
}

enum ProfileModerationStatus {
  unmoderated,
  normal;

  static ProfileModerationStatus getEnum4mString(String? value) {
    switch (value) {
      case "normal":
        return ProfileModerationStatus.normal;
      case "unmoderated":
      default:
        return ProfileModerationStatus.unmoderated;
    }
  }

  bool get canPostPublicly => this == normal;

  bool enablePrivacyFor(PostPrivacy? postPrivacy) {
    switch (postPrivacy) {
      case PostPrivacy.public:
        return canPostPublicly;
      default:
        return true;
    }
  }
}
