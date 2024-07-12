import 'dart:io';

import 'package:arre_frontend_flutter/graphql/http_client.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:mime/mime.dart';

enum MediaEntity {
  UserProfilePicture("UserProfilePicture"),
  CreatorPicture("CreatorPicture"),
  PodPicture("PodPicture"),
  PodAudio("PodAudio"),
  AudioBioClip("AudioBioClip"),
  PodVideo("PodVideo"),
  NotificationPicture("NotificationPicture"),
  TrendingPodsPicture("TrendingPodsPicture"),
  HashtagsPicture("HashtagsPicture"),
  InterestsPicture("InterestsPicture"),
  BgmThumbnailPicture("BgmThumbnailPicture"),
  AudioInsertableIcons("AudioInsertableIcons"),
  ShareClipThumbnail("ShareClipThumbnail"),
  HelpCenterUserQueryImage("HelpCenterUserQueryImage"),
  HelpCenterCategoryIcons("HelpCenterCategoryIcons"),
  ReportUserFlowPicture("ReportUserFlowPicture"),
  RawPodAudio("RawPodAudio"),
  AudioMessage("AudioMessage"),
  ReportAudio("ReportAudio"),
  CommunityChatIcon("CommunityChatIcon");

  const MediaEntity(this.entityType);

  final String entityType;
}

class AMediaService {
  static AMediaService instance = AMediaService._();

  AMediaService._();

  ///curl --location 'https://dev-service-media-manage.arredigital.co/generate/signedurl' \
  /// --header 'Authorization: adn24NZtmbM9qJmU' \
  /// --header 'Content-Type: application/json' \
  /// --data '{
  ///     "entityType": "CreatorPicture",
  ///     "entityId": "top",
  ///     "fileExtension": "jpeg",
  ///     "mediaType": "image/jpeg",
  ///     "mediaSize": "232.434",
  ///     "thumbnailMimeType": "image/jpeg"
  /// }'
  Future<String> uploadFile({
    required File file,
    File? thumbnailFile,
    required MediaEntity entity,
    String? entityId,
  }) async {
    print("VOICE BIO DEBUGGING File #3 size  ${await file.length()}");
    if (file.lengthSync() <= 0) {
      throw ArreException.key(AExceptionKey.EMPTY_FILE);
    }
    final mimeType = lookupMimeType(file.path);
    if (mimeType == null) {
      throw ArreException("Unsupported file ${file.path}");
    }

    String? thumbnailMimeType;
    if (thumbnailFile != null) {
      thumbnailMimeType = lookupMimeType(thumbnailFile.path);
      if (thumbnailMimeType == null) {
        throw ArreException("Unsupported file ${thumbnailFile.path}");
      }
    }

    ///{
    ///     "error": false,
    ///     "message": "Signed URL generated successfully",
    ///     "statuscode": 200,
    ///     "errorcodeforclient": "",
    ///     "data": {
    ///         "entityId": "hashtag",
    ///         "entityType": "HashtagsPicture",
    ///         "mediaId": "skCyeAZPs0yYbE04atV6",
    ///         "signedUrl": "https://all-media-dev.s3.ap-south-1.amazonaws.com/HashtagsPicture/skCyeAZPs0yYbE04atV6.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4EI7FCD27SJP4TEV%2F20230504%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20230504T105849Z&X-Amz-Expires=900&X-Amz-SignedHeaders=content-disposition%3Bcontent-type%3Bhost&X-Amz-Signature=9b685e408f7e2db7a531a52d1900afdb721a91f43a931811706f004923aac160",
    ///         "userId": "20473969"
    ///     }
    /// }
    final signedUrlResponseData = await AHttpClient.instance.post(
        baseUrl: AppConfig.MEDIA_BASE_URL,
        path: "/generate/signedurl",
        body: {
          "entityType": entity.entityType,
          if (entityId != null) "entityId": entityId,
          "fileExtension": ArreFiles.instance.getFileExtension(file),
          "mediaType": mimeType,
          if (thumbnailFile != null) ...{
            "thumbnailMimeType": thumbnailMimeType,
            "thumbnailExtension":
                ArreFiles.instance.getFileExtension(thumbnailFile)
          }
        },
        headers: {
          "Authorization": arrePref.getString(PrefKey.AUTH_TOKEN)!,
          "Content-Type": "application/json",
        });

    await Future.wait([
      AHttpClient.instance.putFile(
        signedUrl: signedUrlResponseData["data"]["signedUrl"],
        file: file,
        headers: {"Content-Type": mimeType, "Content-Disposition": "inline"},
      ),
      if (thumbnailFile != null)
        AHttpClient.instance.putFile(
          signedUrl: signedUrlResponseData["data"]["thumbnailSignedUrl"],
          file: thumbnailFile,
          headers: {
            "Content-Type": thumbnailMimeType!,
            "Content-Disposition": "inline"
          },
        ),
    ]);

    await Future.wait([
      AHttpClient.instance.post(
        baseUrl: AppConfig.MEDIA_BASE_URL,
        path: "/mark/uploaded",
        headers: {"Content-Type": "application/json"},
        body: {"mediaId": signedUrlResponseData["data"]["mediaId"]},
      ),
      if (thumbnailFile != null)
        AHttpClient.instance.post(
          baseUrl: AppConfig.MEDIA_BASE_URL,
          path: "/mark/uploaded",
          headers: {
            "Content-Type": "application/json",
            "Authorization": arrePref.getString(PrefKey.AUTH_TOKEN)!
          },
          body: {
            "mediaId": signedUrlResponseData["data"]["thumbnailImageMediaId"]
          },
        ),
    ]);

    return signedUrlResponseData["data"]["mediaId"];
  }

  Uri getMediaUrl(String mediaId, {bool thumbnail = false}) {
    return Uri.https(
      AppConfig.MEDIA_BASE_URL_DOMAIN,
      "/redirect/media/$mediaId",
      thumbnail ? {"type": "thumbnail"} : null,
    );
  }
}
