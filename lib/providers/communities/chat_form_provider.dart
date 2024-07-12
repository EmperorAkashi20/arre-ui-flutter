import 'dart:io';

import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/network/media_service.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatFormProvider = ChangeNotifierProvider.family
    .autoDispose<ChatFormProvider, String>((ref, communityId) {
  return ChatFormProvider(communityId);
});

enum CommunityChatMember {
  admin,
  everyone;

  List<String> get userAccessLevelRequiredForMessage =>
      this == admin ? ["admin"] : ["admin", "member"];

  static CommunityChatMember fromValues(List<String>? values) {
    if (values != null && values.length == 1 && values.firstOrNull == "admin") {
      return CommunityChatMember.admin;
    } else {
      return CommunityChatMember.everyone;
    }
  }
}

class ChatFormDraft {
  String title = "", description = "";
  String? localImage;
  String? networkImage;
  CommunityChatMember messagePostingAccess = CommunityChatMember.everyone;
  bool notificationStatus = true;
}

class ChatFormProvider with ChangeNotifier {
  CommunityChatDetails? initialData;
  final formKey = GlobalKey<FormState>();
  final String communityId;
  final draft = ChatFormDraft();
  bool isSubmitting = false;

  ChatFormProvider(this.communityId);

  void initDraft(CommunityChatDetails? chatDetails) {
    if (chatDetails == null) return;
    initialData = chatDetails;
    draft
      ..title = chatDetails.chatTitle
      ..description = chatDetails.description ?? ""
      ..networkImage = chatDetails.iconMediaId
      ..notificationStatus = chatDetails.notificationStatus
      ..messagePostingAccess = CommunityChatMember.fromValues(
          chatDetails.userAccessLevelRequiredForMessage);
  }

  Future<void> pickMedia({
    required void Function(dynamic error) onError,
  }) async {
    if (isSubmitting) return;
    try {
      final pickedFile = await ArreFiles.pickMedia(FileType.image);
      if (pickedFile != null) {
        final croppedImage = await Utils.getCroppedImage(
          pickedFile.path,
          ratioX: 1,
          ratioY: 1,
          title: "Crop image",
        );
        if (croppedImage == null) {
          throw ArreIgnoreException("Image crop cancelled");
        }

        draft.localImage = croppedImage;
      }
    } catch (err, st) {
      onError(err);
      Utils.reportError(err, st);
    } finally {
      notifyListeners();
    }
  }

  void onMessageAccessChanged(CommunityChatMember? value) {
    if (value != null) {
      draft.messagePostingAccess = value;
      notifyListeners();
    }
  }

  void onNotificationValueChanged(bool? value) {
    if (value != null) {
      draft.notificationStatus = value;
      notifyListeners();
    }
  }

  void clearImage() {
    draft.localImage = null;
    draft.networkImage = null;
    notifyListeners();
  }

  void validateFields() {
    if (draft.title.validValue == null) {
      throw ArreException("Chat title is required");
    }
  }

  Future<CommunityChatDetails?> submit() async {
    if (isSubmitting) {
      throw ArreIgnoreException("Submission in progress");
    }
    try {
      formKey.currentState!.save();
      if (formKey.currentState!.validate() != true) {
        throw ArreException("Please enter chat name");
      }
      isSubmitting = true;
      notifyListeners();
      String? iconMediaId;
      if (draft.localImage != null) {
        iconMediaId = await AMediaService.instance.uploadFile(
          file: File(draft.localImage!),
          entity: MediaEntity.CommunityChatIcon,
        );
      }
      iconMediaId ??= draft.networkImage;
      if (initialData == null) {
        //Create chat
        return await ApiService.instance.createCommunityChat(
          communityId: communityId,
          chatTitle: draft.title.validValue!,
          iconMediaId: iconMediaId,
          description: draft.description.validValue,
          userAccessLevelRequiredForMessage:
              draft.messagePostingAccess.userAccessLevelRequiredForMessage,
          notificationStatus: draft.notificationStatus ? "unmuted" : "muted",
        );
      } else {
        //Update chat
        await ApiService.instance.updateCommunityChat(
          chatId: initialData!.chatId,
          chatTitle: draft.title.validValue!,
          chatActiveStatus: initialData!.chatStatus.backendValue,
          iconMediaId: iconMediaId,
          description: draft.description.validValue,
          userAccessLevelRequiredForMessage:
              draft.messagePostingAccess.userAccessLevelRequiredForMessage,
          notificationStatus: draft.notificationStatus ? "unmuted" : "muted",
        );
        return null;
      }
    } catch (err, st) {
      Utils.reportError(err, st);
      rethrow;
    } finally {
      isSubmitting = false;
      notifyListeners();
    }
  }
}
