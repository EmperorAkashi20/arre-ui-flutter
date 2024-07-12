// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../graphql/api_service.dart';
// import '../../network/media_service.dart';
// import '../../utils/utils.dart';
//
// final reportVoicepodProvider =
//     ChangeNotifierProvider.autoDispose((ref) => ReportVoicepodProvider());
//
// final reportUserProvider =
//     ChangeNotifierProvider.autoDispose((ref) => ReportUserProvider());
//
// class ReportVoicepodProvider with ChangeNotifier {
//   ReportVoicepodProvider();
//   bool _isLoading = false;
//   bool get isLoading => _isLoading;
//   Future<void> submit(
//       {required void Function() onSuccess,
//       required void Function(dynamic err) onError,
//       String? recordingFile,
//       List<String>? evidanceId,
//       required List<String> selectedCatagory,
//       required String postId,
//       required String reason}) async {
//     try {
//       List<String> imageMediaIds = [];
//       String audioMediaId = "";
//       _isLoading = true;
//       notifyListeners();
//
//       //Upload audio file
//       if (recordingFile != null && recordingFile.isNotEmpty) {
//         audioMediaId = await AMediaService.instance.uploadFile(
//           file: File(recordingFile),
//           entity: MediaEntity.ReportAudio,
//         );
//       }
//
//       //Upload media files
//       if (evidanceId != null && evidanceId.isNotEmpty) {
//         for (String mediaId in evidanceId) {
//           final mediaIds = await AMediaService.instance.uploadFile(
//             file: File(mediaId),
//             entity: MediaEntity.ReportUserFlowPicture,
//           );
//           imageMediaIds.add(mediaIds);
//         }
//       }
//
//       await ApiService.instance.reportVoicepod(
//           postId: postId,
//           type: selectedCatagory,
//           reason: reason,
//           evidanceId: imageMediaIds,
//           audioId: audioMediaId);
//       onSuccess();
//     } catch (err, st) {
//       Utils.reportError(err, st);
//       onError(err);
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }
//
// class ReportUserProvider with ChangeNotifier {
//   ReportUserProvider();
//   bool _isLoading = false;
//   bool get isLoading => _isLoading;
//   Future<void> submit(
//       {required void Function() onSuccess,
//       required void Function(dynamic err) onError,
//       String? recordingFile,
//       required List<String> selectedCatagory,
//       List<String>? evidanceId,
//       required String userId,
//       required String reason}) async {
//     try {
//       List<String> imageMediaIds = [];
//       String audioMediaId = "";
//       _isLoading = true;
//       notifyListeners();
//
//       //Upload audio file
//       if (recordingFile != null && recordingFile.isNotEmpty) {
//         audioMediaId = await AMediaService.instance.uploadFile(
//           file: File(recordingFile),
//           entity: MediaEntity.ReportAudio,
//         );
//       }
//
//       //Upload media files
//       if (evidanceId != null && evidanceId.isNotEmpty) {
//         for (String mediaId in evidanceId) {
//           final mediaIds = await AMediaService.instance.uploadFile(
//             file: File(mediaId),
//             entity: MediaEntity.ReportUserFlowPicture,
//           );
//           imageMediaIds.add(mediaIds);
//         }
//       }
//
//       await ApiService.instance.reportUser(
//           userId: userId,
//           type: selectedCatagory,
//           reason: reason,
//           evidanceId: imageMediaIds,
//           audioId: audioMediaId);
//       onSuccess();
//     } catch (err, st) {
//       Utils.reportError(err, st);
//       onError(err);
//     } finally {
//       _isLoading = false;
//       notifyListeners();
//     }
//   }
// }
