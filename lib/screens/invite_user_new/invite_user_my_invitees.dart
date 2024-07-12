import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/invite_screen_providers/my_invitees_provider.dart';
import '../../styles/styles.dart';
import '../../utils/arre_assets.dart';
import '../../widgets/arre_error_widget.dart';

class InviteUserMyInvitees extends ConsumerWidget {
  const InviteUserMyInvitees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myInviteesDataPvd = ref.watch(myInviteesDataProvider1);
    final windowHeight = MediaQuery.of(context).size.height;
    final windowWidth = MediaQuery.of(context).size.width;
    Widget child;
    if (myInviteesDataPvd.hasData) {
      final children = myInviteesDataPvd.invitedUsersList!
          .where((element) => element.inviteeUserId != null)
          .map((userId) => UserListTile(
                userId: userId.inviteeUserId!,
                padding: EdgeInsets.symmetric(vertical: 4),
              ))
          .toList();
      child = NotificationListener(
        onNotification: myInviteesDataPvd.onScrollNotification,
        child: ListView(children: children),
      );
    } else if (myInviteesDataPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else if (myInviteesDataPvd.hasError) {
      child = Center(
        child: ArreErrorWidget(
          error: myInviteesDataPvd.error,
        ),
      );
    } else {
      child = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ArreAssets.INVITES_EMPTY_IMG,
            width: windowWidth * 0.6,
            height: windowHeight * 0.3,
          ),
          SizedBox(
            height: windowHeight * 0.03,
          ),
          Container(
            width: windowWidth * 0.7,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Feels pretty empty out here?\n\nYou have the ",
                    style: ATextStyles.sys14Regular(Colors.white),
                  ),
                  TextSpan(
                    text: "exclusive power to invite",
                    style: ATextStyles.sys14Bold(Colors.white),
                  ),
                  TextSpan(
                    text: " people in. Take the advantage😉",
                    style: ATextStyles.sys14Regular(Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
    return IconTheme(
      data: IconThemeData(size: 20, color: Color(0xffB1B8B6)),
      child: Column(
        children: [
          SizedBox(
            height: windowHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "USERS I HAVE INVITED ON THE APP",
                style: ATextStyles.expandYourTribeUsersInvitedTextStyle(
                  AColors.tealPrimary,
                ),
              ),
              Container(
                height: 24,
                width: 34,
                decoration: BoxDecoration(
                  color: AColors.BgLight,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    myInviteesDataPvd.invitedUsersList!.length.toString(),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: windowHeight * 0.02),
          Expanded(child: child),
        ],
      ),
    );
  }
}
//
// class MyInviteesDataContainer extends ConsumerStatefulWidget {
//   final GInvitedUsersData_response_data userId;
//
//   const MyInviteesDataContainer(this.userId, {Key? key}) : super(key: key);
//
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _MyInviteesDataContainerState();
// }
//
// class _MyInviteesDataContainerState
//     extends ConsumerState<MyInviteesDataContainer> {
//   @override
//   void initState() {
//     super.initState();
//     ref
//         .read(userDataProvider)
//         .fetchData(widget.userId.inviteeUserId.toString());
//     ref
//         .read(followStatusProvider)
//         .fetchData(widget.userId.inviteeUserId.toString());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final userDataPvd = ref.watch(userDataProvider);
//     Widget child;
//     if (userDataPvd.hasData(widget.userId.inviteeUserId.toString())) {
//       child = UserListTile(
//           userData:
//               userDataPvd.getData(widget.userId.inviteeUserId.toString())!);
//     } else if (userDataPvd.isLoading(widget.userId.inviteeUserId.toString())) {
//       child = Center();
//     } else {
//       child = SizedBox();
//     }
//     return child;
//   }
// }
//
// class UserListTile extends ConsumerWidget {
//   final GUserFullDetailsF userData;
//
//   const UserListTile({
//     Key? key,
//     required this.userData,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 18),
//       child: Row(
//         children: [
//           InkWell(
//             onTap: () {
//               ArreNavigator.instance
//                   .push(AAppPage(child: ProfileScreen(userId: userData.id)));
//             },
//             child: UserAvatar(
//               size: 50,
//               imageUrl: userData.avatarUrl,
//               userName: userData.username,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.only(left: 7),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       ArreNavigator.instance.push(
//                         AAppPage(child: ProfileScreen(userId: userData.id)),
//                       );
//                     },
//                     child: Text(
//                       userData.username.toString(),
//                       overflow: TextOverflow.ellipsis,
//                       style: ATextStyles.sys14PrimaryBold(
//                         Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           FollowUnFollowButton(
//             userData: userData,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class FollowUnFollowButton extends ConsumerWidget {
//   FollowUnFollowButton({
//     Key? key,
//     required this.userData,
//   }) : super(key: key);
//
//   final GUserFullDetailsF userData;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var isFollowing =
//         ref.watch(followStatusProvider).isFollowing(userData.id) ?? false;
//     return GestureDetector(
//       onTap: () async {
//         if (isFollowing == false) {
//           ProfileAction.followUser(ref, userData.id);
//         } else {
//           ProfileAction.unFollowUser(ref, userData.id);
//         }
//       },
//       child: Container(
//         width: 95,
//         padding: EdgeInsets.only(top: 4, bottom: 4),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           color: isFollowing ? AColors.darkBg : AColors.tealPrimary,
//           border: Border.all(
//             width: 1,
//             color: isFollowing ? Colors.white : AColors.tealPrimary,
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(5)),
//         ),
//         child: Text(
//           isFollowing ? "Following" : "Follow",
//           style: TextStyle(
//             fontFamily: "Acumin Pro",
//             fontWeight: FontWeight.w400,
//             letterSpacing: -0.3,
//             color: isFollowing ? Colors.white : AColors.BG,
//           ),
//         ),
//       ),
//     );
//   }
// }
