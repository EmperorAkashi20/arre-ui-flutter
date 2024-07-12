part of creator_studio;

Future<bool> _showImportAudioConfirmSheet(
  BuildContext context,
  Duration trimDuration,
) async {
  final shouldContinue = await showModalBottomSheet<bool>(
    context: context,
    showDragHandle: true,
    useRootNavigator: true,
    routeSettings: RouteSettings(name: GAScreen.CS_IMPORT_CONFIRM_SHEET),
    builder: (context) => ConfirmationSheet(
      title: "Import audio file?",
      description:
          "Only first ${trimDuration.inSeconds} seconds of this audio will be imported",
      primaryBtnLabel: "Continue",
      secondaryBtnLabel: "Cancel",
    ),
  );
  return shouldContinue ?? false;
}

Future<bool?> _showRestartConfirmSheet(BuildContext context) async {
  return showModalBottomSheet<bool>(
    context: context,
    showDragHandle: true,
    routeSettings: RouteSettings(name: GAScreen.CS_RESTART_CONFIRM_SHEET),
    builder: (context) => ConfirmationSheet(
      title: "Restart recording?",
      description:
          "You will lose all progress if you restart.\nWhat would you ike to do?",
      primaryBtnLabel: "Restart",
      secondaryBtnLabel: "Save to drafts",
    ),
  );
}

//
// Future<void> _showRestartConfirmSheet(WidgetRef ref) async {
//   arreAnalytics.logEvent(AnalyticsEvents.CS_STARTOVER_BTN_TAP);
//   final hasChanges = ref.read(csActivityProvider).hasAnyActivity;
//   if (!hasChanges) {
//     ref.read(creatorStudioProvider).reset();
//     return;
//   }
//   final canRestart = await showModalBottomSheet<bool>(
//     context: ref.context,
//     backgroundColor: AColors.BgBright,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(7))),
//     builder: (context) {
//       return _CSConfirmationSheet(
//         title: "Restart or Save Recording",
//         description:
//             "Your recording has not been saved.\nWould you like to restart or save it for later?",
//         primaryBtnLabel: "Start Over",
//         secondaryBtnLabel: "Save as Draft",
//         onPrimaryPressed: () => Navigator.of(context).pop(true),
//         onSecondaryPressed: () => Navigator.of(context).pop(false),
//       );
//     },
//   );
//   if (canRestart == true) {
//     await ref.read(creatorStudioProvider).reset();
//   } else if (canRestart == false) {
//     await ref.read(creatorStudioProvider).save();
//   }
// }
//
// Future<bool> _canPop(WidgetRef ref) async {
//   final hasChanges = await ref.read(creatorStudioProvider).hasChanges();
//   if (!hasChanges) return true;
//
//   final saveAsDraft = await showModalBottomSheet<bool>(
//     context: ref.context,
//     backgroundColor: AColors.BgBright,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(7))),
//     builder: (context) {
//       return _CSConfirmationSheet(
//         title: "Leaving already?",
//         description:
//             "Your recording has not been saved.\nWould you like to save it for later?",
//         primaryBtnLabel: "Save as draft",
//         secondaryBtnLabel: "Exit",
//         onPrimaryPressed: () => Navigator.of(context).pop(true),
//         onSecondaryPressed: () => Navigator.of(context).pop(false),
//       );
//     },
//   );
//   if (saveAsDraft == true) {
//     arreAnalytics.logEvent(AnalyticsEvents.CS_SAVEDRAFT_BTN_TAP,
//         parameters: {EventAttribute.CURRENT_VIEW: 'exit_confirm_sheet'});
//     return _saveAsDraft(ref);
//   } else if (saveAsDraft == false) {
//     return true;
//   }
//   return false;
// }
