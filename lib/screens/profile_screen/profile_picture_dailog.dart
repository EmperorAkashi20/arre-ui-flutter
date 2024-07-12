import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/material.dart';
import 'dart:math';

Future<void> showProfilePictureDialog(GUserDetails userDetails) async {
  arreAnalytics.logEvent(GAEvent.PROFILE_PICTURE_VIEWED);
  await showDialog(
    context: ArreNavigator.instance.context,
    useRootNavigator: true,
    barrierColor: Colors.black.withOpacity(0.75),
    useSafeArea: false,
    builder: (_) => ProfilePictureDialog(userDetails),
  );
}

class ProfilePictureDialog extends StatefulWidget with ArreScreen {
  final GUserDetails userDetails;
  const ProfilePictureDialog(this.userDetails);

  @override
  State<ProfilePictureDialog> createState() => _ProfilePictureDialogState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.PROFILE_PICTURE_DIALOG;
}

class _ProfilePictureDialogState extends State<ProfilePictureDialog> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxSize =
            min(350, 0.9 * MediaQuery.of(context).size.shortestSide);
        return Material(
          type: MaterialType.transparency,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Center(
                child: UserAvatarV2(
                  mediaId: widget.userDetails.profilePictureMediaId,
                  userName: widget.userDetails.username,
                  size: maxSize,
                  showThumbnail: false,
                ),
              ),
              SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CloseButton(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
