// import 'package:arre_frontend_flutter/arre_routing/routing.dart';
// import 'package:arre_frontend_flutter/screens/debugging_logs.dart';
// import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
// import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
//
// void handleBranchLink(Map<dynamic, dynamic> data) {
//   debuggingLogs.add("Branch handleBranchLink $data");
//   if (data.containsKey("redirectUrl")) {
//     ArreNavigator.instance.pushRouteLocation(data["redirectUrl"]);
//   } else if (data.containsKey("voicepodid")) {
//     ArreNavigator.instance.push(
//         AAppPage(child: VoicepodDetailScreen(postId: data["voicepodid"])));
//   } else if (data.containsKey("userProfileId")) {
//     ArreNavigator.instance
//         .push(AAppPage(child: ProfileScreen(userId: data["userProfileId"])));
//   }
// }
