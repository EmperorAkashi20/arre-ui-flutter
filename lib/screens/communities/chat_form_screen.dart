import 'dart:io';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/providers/communities/chat_form_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_chats_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/community_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/styles.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_checkbox_list_tile.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/text_field_label.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../arre_message/arre_message.dart';

class ChatFormScreen extends ConsumerStatefulWidget with ArreScreen {
  final String communityId;
  final String? communityTitle;
  final CommunityChatDetails? initialData;

  const ChatFormScreen({
    super.key,
    required this.communityId,
    this.communityTitle,
    this.initialData,
  });

  @override
  ConsumerState createState() => _ChatFormScreenState();

  @override
  Uri get uri =>
      Uri(path: "/voiceclub/$communityId/chat_form", queryParameters: {
        if (initialData != null) "chat_id": initialData!.chatId
      });

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 3 &&
        uri.pathSegments[0] == "voiceclub" &&
        uri.pathSegments[2] == "chat_form") {
      return AAppPage(
        child: ChatFormScreen(
          communityId: uri.pathSegments[1],
          communityTitle: uri.queryParameters["title"] ?? "",
        ),
      );
    }
    return null;
  }

  @override
  String get screenName => initialData == null
      ? GAScreen.CREATE_CHAT_FORM_SCREEN
      : GAScreen.UPDATE_CHAT_FORM_SCREEN;
}

class _ChatFormScreenState extends ConsumerState<ChatFormScreen> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(chatFormProvider(widget.communityId), (previous, next) {});
    ref
        .read(chatFormProvider(widget.communityId))
        .initDraft(widget.initialData);
  }

  bool get isUpdateForm => widget.initialData != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Consumer(
          builder: (context, ref, child) {
            String title = isUpdateForm ? "Edit Chat" : "Create Chat";
            final communityTitle = ref
                    .watch(communityNameProvider(widget.communityId))
                    .valueOrNull ??
                widget.communityTitle;
            if (communityTitle != null) {
              title += " - $communityTitle";
            }
            return Text(title);
          },
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: _BottomActionButton(
        communityId: widget.communityId,
        buttonText: isUpdateForm ? "Update Changes" : "Create Chat",
      )),
      body: Form(
        key: ref.read(chatFormProvider(widget.communityId)).formKey,
        child: SafeArea(
          child: Theme(
            data: Styles.buildFormScreenTheme(context),
            child: _Body(widget.communityId),
          ),
        ),
      ),
    );
  }
}

class _Body extends ConsumerStatefulWidget {
  final String communityId;

  const _Body(this.communityId);

  @override
  ConsumerState createState() => __BodyState();
}

class __BodyState extends ConsumerState<_Body> {
  @override
  Widget build(BuildContext context) {
    final chatFormPvd = ref.watch(chatFormProvider(widget.communityId));
    final draft = chatFormPvd.draft;
    final sectionTitle = ATextStyles.sys14Bold(AColors.greyLight);
    // final fieldLabel = ATextStyles.sys12Bold(AColors.textDark);
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Chat Image", style: sectionTitle),
          Center(child: _ChatPictureWidget(widget.communityId)),
          Center(
            child: CupertinoButton(
              child: Text(
                "Upload Image",
                style: ATextStyles.sys14PrimaryBold(AColors.tealPrimary),
              ),
              onPressed: !chatFormPvd.isSubmitting
                  ? () => chatFormPvd.pickMedia(onError: showErrorSnackBar)
                  : null,
            ),
          ),
          SizedBox(height: 16),
          Text("Chat Details", style: sectionTitle),
          SizedBox(height: 16),
          TextFieldLabel(
            label: Text("Chat Name*"),
            child: TextFormField(
              initialValue: draft.title,
              maxLength: 30,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autocorrect: false,
              onSaved: (value) => draft.title = value ?? "",
              validator: (String? value) {
                if (!value.isValid) {
                  return "Please enter chat name";
                }
                return null;
              },
              decoration: InputDecoration(),
            ),
          ),
          SizedBox(height: 16),
          TextFieldLabel(
            label: Text('Chat Description'),
            child: TextFormField(
              initialValue: draft.description,
              minLines: 2,
              maxLines: 3,
              maxLength: 200,
              textInputAction: TextInputAction.newline,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onSaved: (value) => draft.description = value ?? "",
            ),
          ),
          SizedBox(height: 16),
          TextFieldLabel(
            label: Text("Who can send messages"),
            gap: 4,
            child: Column(
              children: [
                RadioListTile(
                  value: CommunityChatMember.everyone,
                  title: Text("Everyone"),
                  groupValue: draft.messagePostingAccess,
                  onChanged: chatFormPvd.onMessageAccessChanged,
                  controlAffinity: ListTileControlAffinity.trailing,
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                ),
                RadioListTile(
                  value: CommunityChatMember.admin,
                  title: Text("Only Admins"),
                  groupValue: draft.messagePostingAccess,
                  onChanged: chatFormPvd.onMessageAccessChanged,
                  controlAffinity: ListTileControlAffinity.trailing,
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          TextFieldLabel(
            gap: 4,
            child: ACheckboxListTile(
              value: draft.notificationStatus,
              title: Text("Send Notifications"),
              subtitle: Text(
                "Members will receive notifications from this chat. This can be changed anytime",
                style: ATextStyles.sys12Regular(AColors.textDark),
              ),
              onChanged: chatFormPvd.onNotificationValueChanged,
            ),
            label: Text("Notifications"),
          ),
        ],
      ),
    );
  }
}

class _ChatPictureWidget extends ConsumerWidget {
  final String communityId;
  final double size = 111;

  const _ChatPictureWidget(
    this.communityId, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatFormPvd = ref.watch(chatFormProvider(communityId));
    Widget child;
    if (chatFormPvd.draft.localImage != null) {
      child = SizedBox.square(
        dimension: size,
        child: ClipOval(
          child: Image.file(
            File(chatFormPvd.draft.localImage!),
            fit: BoxFit.cover,
          ),
        ),
      );
    } else if (chatFormPvd.draft.networkImage != null) {
      child = UserAvatarV2(
        mediaId: chatFormPvd.draft.networkImage,
        userName: null,
        size: size,
        showThumbnail: false,
      );
    } else {
      child = CircleAvatar(
        child: Icon(Icons.add_photo_alternate_outlined, size: size / 3.5),
        radius: size / 2,
        backgroundColor: AColors.tealLight,
      );
    }
    return SizedBox(
      height: size + 8,
      width: size + 8,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => chatFormPvd.pickMedia(onError: showErrorSnackBar),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: child,
            ),
          ),
          if (chatFormPvd.draft.localImage != null ||
              chatFormPvd.draft.networkImage != null)
            Align(
              alignment: Alignment(0.9, -0.9),
              child: FilledIconButton(
                icon: Icon(
                  Icons.close,
                  color: AColors.tealPrimary,
                  size: 18,
                ),
                size: 28,
                padding: EdgeInsets.all(4),
                onPressed:
                    !chatFormPvd.isSubmitting ? chatFormPvd.clearImage : null,
                borderColor: AColors.tealPrimary,
                fillColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
        ],
      ),
    );
  }
}

class _BottomActionButton extends ConsumerWidget {
  final String communityId;
  final String buttonText;

  const _BottomActionButton({
    required this.communityId,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatFormPvd = ref.watch(chatFormProvider(communityId));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black, Theme.of(context).scaffoldBackgroundColor],
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          height: 34,
          child: FilledButton(
            onPressed: () async {
              try {
                final chatDetails = await chatFormPvd.submit();
                if (context.mounted) {
                  ref.invalidate(communityChatsProvider(communityId));
                  if (chatDetails is CommunityChatDetails) {
                    ArreNavigator.instance.replace(
                      context,
                      AAppPage(
                        child: CommunityChatScreen(
                          chatId: chatDetails.chatId,
                          communityId: communityId,
                          chatDetails: chatDetails,
                        ),
                      ),
                    );
                  } else if (chatFormPvd.initialData != null) {
                    Navigator.of(context).pop(true);
                  }
                }
              } catch (err) {
                showSnackBarV2(context: context, error: err);
              }
            },
            child: chatFormPvd.isSubmitting
                ? SizedBox.square(
                    dimension: 16,
                    child: CircularProgressIndicator(color: Colors.white),
                  )
                : Text(
                    buttonText,
                    style: ATextStyles.sys14Bold(),
                  ),
          ),
        ),
      ),
    );
  }
}
