import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/models/src/message_draft.dart';
import 'package:arre_frontend_flutter/providers/arre_message_providers/arre_message_providers.dart';
import 'package:arre_frontend_flutter/screens/arre_message/arre_message.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/player_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/src/arre_exceptions.dart';
import 'package:rive/rive.dart' as rive;
import '../screens/permission_sheet.dart';
import '../styles/styles.dart';
import '../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../utils/arre_assets.dart';
import 'arre_icons.dart';
import 'filled_icon_button.dart';

const _TEXT_FIELD_HEIGHT = 50.0;
const _VOICE_FIELD_HEIGHT = 128.0;
const _EDGE_PADDING_VALUE = 16.0;

class MessageDraftWidget extends ConsumerStatefulWidget {
  final String conversationId;
  final MessageOn messagingOn;

  static GAEvent? _getGAEventFor(String eventName, WidgetRef ref) {
    try {
      var currentPage =
          (ModalRoute.of(ref.context)?.settings as ArrePage).child;
      if (currentPage is CommunityChatScreen) {
        final chatScreen = currentPage;
        String? communityId = chatScreen.chatDetails?.communityId ??
            Utils.getCommunityId4mChatId(
              ref,
              chatScreen.chatId,
            );
        String? userType;
        if (communityId != null) {
          userType =
              Utils.getUserCommunityRole(ref, communityId, listen: false);
        }
        return GAEvent(
          eventName,
          entityType: "vc_chats",
          userType: userType,
          entityId: chatScreen.chatId,
        );
      } else if (currentPage is MessagesScreen) {
        final dmScreen = currentPage;
        return GAEvent(
          eventName,
          entityId: dmScreen.conversationId,
          entityType: "dm",
        );
      }
      assert(false,
          "This event must be logged only from DM or CommunityChats screens");
      throw ArreException.key(AExceptionKey.GA_EVENT_4M_UNKNOWN_SCREEN);
    } catch (err, st) {
      Utils.reportError(err, st);
      return null;
    }
  }

  MessageDraftWidget({
    required this.conversationId,
    required this.messagingOn,
  });

  @override
  ConsumerState createState() => __MessageDraftWidgetState();
}

class __MessageDraftWidgetState extends ConsumerState<MessageDraftWidget>
    with RouteAware {
  String get conversationId => widget.conversationId;

  @override
  void initState() {
    super.initState();
    ref.read(messageDraftProvider(widget.conversationId)).initDraftContext(
          messagingOn: widget.messagingOn,
          getGAEventParams: (eventName) =>
              MessageDraftWidget._getGAEventFor(eventName, ref),
        );
  }

  @override
  void didChangeDependencies() {
    appRouteObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
    super.didChangeDependencies();
  }

  @override
  void didPushNext() {
    ref.read(messageDraftProvider(conversationId)).stopRecording();
    super.didPushNext();
  }

  @override
  void dispose() {
    appRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            _EDGE_PADDING_VALUE,
            _EDGE_PADDING_VALUE,
            _EDGE_PADDING_VALUE * 2 + _TEXT_FIELD_HEIGHT,
            _EDGE_PADDING_VALUE,
          ),
          child: _TextDraftField(conversationId),
        ),
        _VoiceDraftField(conversationId),
        Positioned(
          right: _EDGE_PADDING_VALUE,
          bottom: _EDGE_PADDING_VALUE,
          child: _RecordAndSendButton(conversationId),
        ),
      ],
    );
  }
}

class _TextDraftField extends ConsumerStatefulWidget {
  final String conversationId;

  const _TextDraftField(this.conversationId);

  @override
  ConsumerState createState() => __TextDraftFieldState();
}

class __TextDraftFieldState extends ConsumerState<_TextDraftField> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        MessageDraftWidget._getGAEventFor(GAEvent.MSG_TEXT_FIELD_FOCUSED, ref)
            ?.log();
      }
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final draftPvd = ref.watch(messageDraftProvider(widget.conversationId));
    final border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide.none,
    );
    ALogger.d("TextDraftField widget hashCode ${this.hashCode}");
    return TextField(
      focusNode: focusNode,
      controller: draftPvd.messageEditingCtrl,
      minLines: 1,
      maxLines: 4,
      onChanged: draftPvd.onTextChange,
      decoration: InputDecoration(
        hintText: 'Type or record your message',
        hintStyle: ATextStyles.user14Regular(AColors.textDark),
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        fillColor: AColors.BgLight,
        filled: true,
        contentPadding:
            EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      ),
    );
  }
}

class _VoiceDraftField extends ConsumerStatefulWidget {
  final String conversationId;

  const _VoiceDraftField(this.conversationId);

  @override
  ConsumerState createState() => __VoiceDraftFieldState();
}

class __VoiceDraftFieldState extends ConsumerState<_VoiceDraftField> {
  @override
  Widget build(BuildContext context) {
    final draftPvd = ref.watch(messageDraftProvider(widget.conversationId));

    Widget child = OverflowBox(
      minHeight: _VOICE_FIELD_HEIGHT,
      maxHeight: _VOICE_FIELD_HEIGHT,
      minWidth: MediaQuery.sizeOf(context).width,
      maxWidth: MediaQuery.sizeOf(context).width,
      alignment: Alignment.bottomRight,
      child: DefaultTextStyle(
        style: ATextStyles.user14Regular(AColors.tealLight),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: draftPvd.isRecording
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  AColors.BgLight, BlendMode.colorDodge),
                              child: rive.RiveAnimation.asset(
                                ArreAssets.CS_RECORDING_ANIM,
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        : _DraftPreview(widget.conversationId),
                  ),
                  FilledFlatButton(
                    borderRadius: 26,
                    onPressed: () async {
                      try {
                        await draftPvd.sendMessage(MessageType.audio);
                      } catch (err) {
                        showSnackBarV2(context: context, error: err);
                      }
                    },
                    child: SizedBox(
                      height: 18,
                      child: Center(
                        child: draftPvd.isSending
                            ? SizedBox.square(
                                dimension: 16,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 1,
                                ),
                              )
                            : Text("Send", style: ATextStyles.sys14Bold()),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          splashRadius: 24,
                          onPressed: () {
                            MessageDraftWidget._getGAEventFor(
                              GAEvent.MSG_DELETE_RECORDING_DRAFT,
                              ref,
                            )?.log();
                            draftPvd.clearVoiceDraft();
                          },
                          icon: Icon(
                            ArreIconsV2.bin_filled,
                            size: 24,
                            color: AColors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(ArreIconsV2.mic_filled, size: 16),
                        if (draftPvd.isRecording)
                          StreamBuilder(
                            stream: Stream.periodic(Duration(seconds: 1)),
                            builder: (context, _) {
                              return Text(
                                "${draftPvd.timerDisplay}/00:30",
                                style: ATextStyles.user12Regular(),
                              );
                            },
                          )
                        else
                          Text(
                            "${draftPvd.timerDisplay}/00:30",
                            style: ATextStyles.user12Regular(),
                          ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    if (draftPvd.showRecordingMode) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 250),
        height: _VOICE_FIELD_HEIGHT,
        curve: Curves.easeIn,
        margin: EdgeInsets.zero,
        width: MediaQuery.sizeOf(context).width,
        color: AColors.BgLight,
        clipBehavior: Clip.hardEdge,
        child: child,
      );
    } else {
      return AnimatedContainer(
        duration: Duration(milliseconds: 250),
        height: _TEXT_FIELD_HEIGHT,
        width: _TEXT_FIELD_HEIGHT,
        clipBehavior: Clip.hardEdge,
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AColors.BgDark,
        ),
        child: child,
      );
    }
  }
}

class _DraftPreview extends ConsumerStatefulWidget {
  final String conversationId;

  _DraftPreview(this.conversationId);

  @override
  ConsumerState createState() => __DraftPreviewState();
}

class __DraftPreviewState extends ConsumerState<_DraftPreview> {
  @override
  Widget build(BuildContext context) {
    final voiceMessagePvd =
        ref.read(messageDraftProvider(widget.conversationId));
    if (voiceMessagePvd.player == null || !voiceMessagePvd.showRecordingMode) {
      return SizedBox();
    }
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: AColors.BgDark,
        borderRadius: BorderRadius.circular(36),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          AudioPlayerButtonState(
            player: voiceMessagePvd.player!,
            initCallback: () {
              arreAnalytics.logEvent(GAEvent.MSG_PLAY_DRAFT_MESSAGE);
              voiceMessagePvd.playVoiceDraft();
            },
            gaContext: PlayerGAContext.voice_message_draft,
            fillColor: Colors.transparent,
            iconColor: AColors.tealPrimary,
            iconSize: 24,
          ),
          Expanded(
            child: PlayerProgressBar(
              player: voiceMessagePvd.player!,
              handleRadius: 7,
              height: 5,
            ),
          ),
          SizedBox(width: 12),
          Text(
            voiceMessagePvd.timerDisplay,
            style: ATextStyles.user14Regular(),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}

class _RecordAndSendButton extends ConsumerStatefulWidget {
  final String conversationId;

  const _RecordAndSendButton(this.conversationId);

  @override
  ConsumerState createState() => __RecordAndSendButtonState();
}

class __RecordAndSendButtonState extends ConsumerState<_RecordAndSendButton> {
  String get conversationId => widget.conversationId;

  Future<void> startRecording() async {
    MessageDraftWidget._getGAEventFor(GAEvent.MSG_RECORD_BTN_TAP, ref)?.log();
    final hasPermission = await handlePermission(Permission.microphone);
    if (!hasPermission.item1) {
      throw ArreException("App needs microphone permission to record");
    }
    if (!hasPermission.item2) return;
    ref
        .read(messageDraftProvider(conversationId))
        .startRecording()
        .catchError((err) => showSnackBarV2(context: ref.context, error: err));
  }

  @override
  Widget build(BuildContext context) {
    final draftPvd = ref.watch(messageDraftProvider(conversationId));
    if (!draftPvd.showRecordingMode && draftPvd.isValidMessage) {
      return FilledIconButton(
        size: 50,
        padding: EdgeInsets.zero,
        icon: Icon(ArreIconsV2.send_filled, size: 24),
        onPressed: () async {
          try {
            await draftPvd.sendMessage(MessageType.text);
          } catch (err) {
            showSnackBarV2(context: context, error: err);
          }
        },
        fillColor: AColors.orangePrimary,
      );
    } else if (!draftPvd.showRecordingMode) {
      return FilledIconButton(
        size: 50,
        padding: EdgeInsets.zero,
        icon: Icon(ArreIconsV2.mic_filled, size: 32),
        onPressed: () => startRecording(),
        fillColor: AColors.orangePrimary,
      );
    } else if (draftPvd.isRecording) {
      return FilledIconButton(
        size: 50,
        padding: EdgeInsets.zero,
        borderColor: AColors.orangePrimary,
        icon: Icon(
          ArreIconsV2.pause_filled,
          size: 24,
          color: AColors.orangePrimary,
        ),
        onPressed: () {
          MessageDraftWidget._getGAEventFor(GAEvent.MSG_PAUSE_RECORDING, ref)
            ?..context = "manual"
            ..log();
          draftPvd.stopRecording().catchError(showErrorSnackBar);
        },
        fillColor: AColors.BgLight,
      );
    } else if (draftPvd.hasReachedMaxRecording) {
      return FilledIconButton(
        size: 50,
        padding: EdgeInsets.zero,
        borderColor: AColors.stateDisabled,
        icon: Icon(
          ArreIconsV2.mic_filled,
          size: 32,
          color: AColors.stateDisabled,
        ),
        onPressed: () {
          showInfoSnackBar(
              "Your message is 30 seconds long. If you have something more to say, please send another message");
        },
        fillColor: AColors.BgLight,
      );
    } else {
      return FilledIconButton(
        size: 50,
        padding: EdgeInsets.zero,
        borderColor: AColors.orangePrimary,
        icon: Icon(
          ArreIconsV2.mic_filled,
          size: 32,
          color: AColors.orangePrimary,
        ),
        onPressed: () => startRecording(),
        fillColor: AColors.BgLight,
      );
    }
  }
}
