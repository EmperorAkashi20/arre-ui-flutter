/// Support for doing something awesome.
///
/// More dartdocs go here.
library arre_post_manage_gql;

export 'src/arre_post_manage_gql_base.dart';
export 'src/__generated__/post_manage_queries.var.gql.dart';
export 'src/__generated__/post_manage_queries.data.gql.dart';
export 'src/__generated__/post_manage_queries.req.gql.dart';
export 'src/__generated__/post_manage_schema.schema.gql.dart';
import 'package:arre_post_manage_gql/src/__generated__/post_manage_schema.schema.gql.dart';

import 'src/__generated__/post_manage_queries.data.gql.dart';

extension PostDetailsExtension on GPostDetails {
  bool get isPrivate => visibility == GPostVisibility.private;

  String get audioMediaId => audioMediaFiles.first;

  bool get hasAnyMedia => mediaTypeIsVideo || mediaTypeIsImage;

  bool get mediaTypeIsImage => imageMediaFiles.isNotEmpty;

  bool get mediaTypeIsVideo => videoMediaFiles.isNotEmpty;

  String? get imageMediaId => mediaTypeIsImage ? imageMediaFiles.first : null;

  String? get videoMediaId => mediaTypeIsVideo ? videoMediaFiles.first : null;

  DateTime get createdAtDateTime =>
      DateTime.fromMillisecondsSinceEpoch(int.parse(createdAt));
}
