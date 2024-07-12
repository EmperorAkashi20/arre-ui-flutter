part of edit_profile;

Future<bool> _onWillPopEditProfile(WidgetRef ref) async {
  if (!ref.read(editProfileProvider).hasChanges()) return true;
  arreAnalytics.logEvent(GAEvent.PROFILE_COMPLETION_PAGE_LEAVING_POP_UP);
  final canExit = await showModalBottomSheet(
    context: ref.context,
    showDragHandle: true,
    routeSettings:
        RouteSettings(name: GAScreen.EDIT_PROFILE_SAVE_CONFIRM_SHEET),
    builder: (_) => ConfirmationSheet(
      title: "Discard Changes?",
      description: "You are only 2 steps away from profile completion!",
      primaryBtnLabel: "Save and Exit",
      secondaryBtnLabel: "Leave anyway",
    ),
  );
  if (canExit == true) {
    try {
      final msg = await ref.read(editProfileProvider).saveAndExit();
      _updateProvidersAndPop(ref, msg);
    } catch (err) {
      showErrorSnackBar(err);
    }
  } else if (canExit == false) {
    arreAnalytics.logEvent(GAEvent.EXIT_POP_UP_LEAVE_BUTTON_CLICKED);
  }
  return canExit == false;
}
//
// class _EditProfilePopConfirmSheet extends StatelessWidget {
//   const _EditProfilePopConfirmSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       minimum: EdgeInsets.fromLTRB(32, 0, 32, 24),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Center(
//             child: Text(
//               "You’re going to miss out!",
//               style: ATextStyles.sys20Bold(AColors.textLight),
//             ),
//           ),
//           SizedBox(height: 16),
//           Center(
//             child: Image.asset(
//               ArreAssets.CERTIFICATION_BADGE_IMG,
//               height: 98,
//             ),
//           ),
//           SizedBox(height: 16),
//           Text(
//             "You are only 2 steps away from profile completion! Word on the street is that complete profile tend to engage better with listeners",
//             style: ATextStyles.sys14Regular(AColors.textMedium),
//           ),
//           SizedBox(height: 16),
//           FilledFlatButton(
//             onPressed: () => Navigator.of(context).pop(false),
//             child: Text(
//               "Finish now",
//               style: ATextStyles.buttons(),
//             ),
//           ),
//           Center(
//             child: TextButton(
//               style: ButtonStyle(
//                   foregroundColor: MaterialStatePropertyAll(AColors.tealLight)),
//               onPressed: () => Navigator.of(context).pop(true),
//               child: Text(
//                 "Leave anyway",
//                 style: ATextStyles.buttons(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
