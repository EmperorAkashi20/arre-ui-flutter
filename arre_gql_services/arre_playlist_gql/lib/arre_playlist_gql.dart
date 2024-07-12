/// Support for doing something awesome.
///
/// More dartdocs go here.
library arre_playlist_gql;

import 'arre_playlist_gql.dart';

export 'src/arre_playlist_gql_base.dart';
export 'src/__generated__/playlist_requests.var.gql.dart';
export 'src/__generated__/playlist_requests.data.gql.dart';
export 'src/__generated__/playlist_requests.req.gql.dart';
export 'src/__generated__/playlist_schema.schema.gql.dart';

enum PlaylistPrivacy {
  private,
  public,
  both;

  GprivacyType get toBackendValue {
    switch (this) {
      case PlaylistPrivacy.private:
        return GprivacyType.private;
      case PlaylistPrivacy.public:
      case PlaylistPrivacy.both:
        return GprivacyType.both;
    }
  }

  bool get isPrivate => this == private;

  static PlaylistPrivacy fromPrivacyType(GprivacyType privacyType) {
    switch (privacyType) {
      case GprivacyType.private:
        return private;
      case GprivacyType.both:
        return both;
      case GprivacyType.public:
      default:
        return public;
    }
  }
}

extension PlaylistExtension on GPlaylist {
  bool get isSystemGenerated => creatorOfPlaylist == "system";
  PlaylistPrivacy get privacyEnum => PlaylistPrivacy.fromPrivacyType(privacy);
  bool get isPrivate => privacyEnum == PlaylistPrivacy.private;
}
