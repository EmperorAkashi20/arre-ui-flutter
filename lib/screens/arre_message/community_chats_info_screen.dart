import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/community_chat.dart';
import 'package:arre_frontend_flutter/providers/communities/community_chats_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/widgets/user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class CommunityChatsInfoScreen extends ConsumerStatefulWidget with ArreScreen {
  final String chatId;
  final CommunityChatDetails? chatDetails;

  const CommunityChatsInfoScreen({
    required this.chatId,
    this.chatDetails,
  });

  @override
  ConsumerState createState() => _CommunityChatsDetailsScreenState();

  @override
  String get screenName => GAScreen.VOICECLUB_CHAT_INFO_SCREEN;

  @override
  Uri? get uri => Uri.parse("/voiceclub/chat/info/$chatId");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.pathSegments.length == 4 &&
        uri.pathSegments[0] == "voiceclub" &&
        uri.pathSegments[1] == "chat" &&
        uri.pathSegments[2] == "info") {
      return AAppPage(
          child: CommunityChatsInfoScreen(chatId: uri.pathSegments[3]));
    }
    return null;
  }
}

class _CommunityChatsDetailsScreenState
    extends ConsumerState<CommunityChatsInfoScreen> {
  @override
  Widget build(BuildContext context) {
    Widget child;
    final chatDetailsPvd = ref.watch(chatDetailsProvider(widget.chatId));
    final chatDetails = chatDetailsPvd.valueOrNull ?? widget.chatDetails;
    final headingStyle = ATextStyles.sys16Bold();
    final bodyStyle = ATextStyles.sys14Regular(AColors.textMedium);

    if (chatDetails != null) {
      child = SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: UserAvatarV2(
                size: 100,
                mediaId: chatDetails.iconMediaId,
                userName: chatDetails.chatTitle,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                chatDetails.chatTitle,
                style: headingStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24),
            if (chatDetails.description.isValid) ...[
              Text("About the chat", style: headingStyle),
              SizedBox(height: 12),
              Text(chatDetails.description ?? "", style: bodyStyle),
              SizedBox(height: 20),
            ],
            Divider(),
            SizedBox(height: 20),
            Text("Created On", style: headingStyle),
            SizedBox(height: 6),
            Text(
              DateFormat.yMMMd()
                  .addPattern(" ")
                  .add_jm()
                  .format(chatDetails.createdAt),
              style: bodyStyle,
            ),
            SizedBox(height: 24),
            Text("Created By", style: headingStyle),
            SizedBox(height: 6),
            Consumer(
              builder: (context, ref, child) {
                return UserListTile.shrink(
                  userId: chatDetails.createdBy,
                  style: bodyStyle,
                );
              },
            ),
            if (chatDetails.endedBy != null && chatDetails.endedOn != null) ...[
              SizedBox(height: 20),
              Text("Ended On", style: headingStyle),
              SizedBox(height: 6),
              Text(
                DateFormat.yMMMd()
                    .addPattern(", ")
                    .add_jm()
                    .format(chatDetails.endedOn!),
                style: bodyStyle,
              ),
              SizedBox(height: 24),
              Text("Ended By", style: headingStyle),
              SizedBox(height: 6),
              Consumer(
                builder: (context, ref, child) {
                  return UserListTile.shrink(
                    userId: chatDetails.endedBy!,
                    style: bodyStyle,
                  );
                },
              ),
            ]
          ],
        ),
      );
    } else if (chatDetailsPvd.isLoading) {
      child = Center(child: CircularProgressIndicator());
    } else {
      child = Center(child: ArreErrorWidget(error: chatDetailsPvd.error));
    }
    return Scaffold(
      appBar: AppBar(leading: ABackButton()),
      body: child,
    );
  }
}
