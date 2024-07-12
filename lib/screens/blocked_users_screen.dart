import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/providers/blocked_users_provider.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlockedUsersScreen extends ConsumerStatefulWidget with ArreScreen {
  const BlockedUsersScreen({super.key});

  @override
  ConsumerState createState() => _BlockedUsersScreenState();

  @override
  Uri? get uri => Uri.parse("/users/blocked");

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/users/blocked") {
      return AAppPage(child: BlockedUsersScreen());
    }
    return null;
  }

  @override
  String get screenName => GAScreen.BLOCKED_USERS;
}

class _BlockedUsersScreenState extends ConsumerState<BlockedUsersScreen> {
  Future<void> unblockUser(ArreUser user) async {
    final blockedUsersPvd = ref.read(blockedUsersProvider);
    final confirmUnblock = await showModalBottomSheet(
      context: context,
      showDragHandle: true,
      useRootNavigator: true,
      builder: (_) {
        return ConfirmationSheet(
          title: "Unblock @${user.username}?",
          description: "Are you sure you want to unblock @${user.username}?",
          primaryBtnLabel: "Unblock",
          secondaryBtnLabel: "Cancel",
        );
      },
    );

    if (confirmUnblock == true) {
      blockedUsersPvd.unblock(user.userId).catchError((err) {
        showSnackBarV2(context: context, error: err);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final blockedUsersPvd = ref.watch(blockedUsersProvider);
    Widget child;
    List<ArreUser>? data = blockedUsersPvd.data;
    if (data != null) {
      if (data.isNotEmpty) {
        child = NotificationListener(
          onNotification: blockedUsersPvd.onScrollNotification,
          child: ListView.builder(
            itemBuilder: (context, index) {
              Widget child = _UserListTile(
                arreUser: data[index],
                onUnblockPressed: () {
                  unblockUser(data[index]);
                },
              );
              if (blockedUsersPvd.unblockingUserIds
                  .contains(data[index].userId)) {
                child = Opacity(
                  opacity: 0.5,
                  child: IgnorePointer(child: child),
                );
              }

              return child;
            },
            itemCount: data.length,
          ),
        );
      } else {
        child =
            ArreErrorWidget.empty(message: "Blocked members will appear here!");
      }
    } else if (blockedUsersPvd.isLoading) {
      child = Center(child: CircularProgressIndicator());
    } else {
      child = ArreErrorWidget(
        error: blockedUsersPvd.error,
        onPressed: blockedUsersPvd.init,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Blocked Members"),
        leading: ABackButton(),
      ),
      body: child,
    );
  }
}

class _UserListTile extends StatelessWidget {
  final ArreUser arreUser;
  final VoidCallback onUnblockPressed;

  const _UserListTile({
    required this.arreUser,
    required this.onUnblockPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ArreNavigator.instance
            .push(AAppPage(child: ProfileScreen(userId: arreUser.userId)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            UserAvatarV2(
              size: 46,
              mediaId: arreUser.profilePictureMediaId,
              userName: arreUser.username,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                "@${arreUser.username}",
                style: ATextStyles.sys14Bold(AColors.textLight),
              ),
            ),
            SizedBox(width: 12),
            OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4))),
                  foregroundColor: MaterialStatePropertyAll(AColors.textMedium),
                  side: MaterialStatePropertyAll(
                      BorderSide(color: AColors.textMedium)),
                  minimumSize: MaterialStatePropertyAll(Size(102, 26)),
                  textStyle: MaterialStatePropertyAll(
                      ATextStyles.sys14Bold(null, 1.6))),
              onPressed: onUnblockPressed,
              child: Text("Unblock"),
            )
          ],
        ),
      ),
    );
  }
}
