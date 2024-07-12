import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

import 'mixins.dart';

part "cs_media_attachment.g.dart";

@Collection(ignore: {"props", "stringify", "hashCode"})
@Name("csMediaAttachment")
class CSMediaAttachment with CSDraftField, EquatableMixin {
  Id isarId = Isar.autoIncrement;
  String mediaRelativePath;
  String thumbnailRelativePath;
  @Enumerated(EnumType.name)
  final AFileDirectory fileDirectory;
  String mimeType;

  @Index(replace: true, unique: true)
   int draftIsarId = 0;

  CSMediaAttachment({
    required this.mediaRelativePath,
    required this.thumbnailRelativePath,
    required this.fileDirectory,
    required this.mimeType,
  });

  @ignore
  bool get isImage => mimeType.contains("image");

  @ignore
  bool get isVideo => mimeType.contains("video");

  @ignore
  AFile get mediaFile => AFile(
        relativePath: mediaRelativePath,
        fileDirectory: fileDirectory,
      );

  @ignore
  AFile get thumbnailFile => AFile(
        relativePath: thumbnailRelativePath,
        fileDirectory: fileDirectory,
      );

  void delete() {
    mediaFile.absolute.then((value) => value.delete());
    thumbnailFile.absolute.then((value) => value.delete());
  }

  CSMediaAttachment copyWith({
    String? mediaRelativePath,
    String? thumbnailRelativePath,
    AFileDirectory? fileDirectory,
    String? mimeType,
  }) {
    return CSMediaAttachment(
      mediaRelativePath: mediaRelativePath ?? this.mediaRelativePath,
      thumbnailRelativePath:
          thumbnailRelativePath ?? this.thumbnailRelativePath,
      fileDirectory: fileDirectory ?? this.fileDirectory,
      mimeType: mimeType ?? this.mimeType,
    );
  }

  @override
  List<Object?> get props => [
        isarId,
        draftIsarId,
        mediaRelativePath,
        thumbnailRelativePath,
        mimeType,
        fileDirectory,
      ];
}
