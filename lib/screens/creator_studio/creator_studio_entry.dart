part of creator_studio;

Future<void> openCreatorStudio(
  BuildContext context, {
  String? communityId,
}) async {
  arreAnalytics.logEvent(
    GAEvent.CREATE_VOICEPOD_BTN_TAP,
    parameters: {EventAttribute.VOICECLUB_ID: communityId},
  );
  ArreNavigator.instance
      .push(AGlobalPage(child: CreatorStudioScreen(communityId: communityId)));
  // final draftOrMood = await showModalBottomSheet(
  //   context: context,
  //   routeSettings: RouteSettings(name: GAScreen.MOOD_SELECTION_SHEET),
  //   useRootNavigator: true,
  //   showDragHandle: true,
  //   isScrollControlled: true,
  //   builder: (_) => _CreatorStudioOptions(),
  // );
  //
  // if (draftOrMood is CSDraft) {
  //   ArreNavigator.instance
  //       .push(AGlobalPage(child: CreatorStudioScreen(draft: draftOrMood)));
  // } else if (draftOrMood is Mood) {
  //   ArreNavigator.instance
  //       .push(AGlobalPage(child: CreatorStudioScreen(mood: draftOrMood)));
  // }
}
//
// class _CreatorStudioOptions extends ConsumerStatefulWidget {
//   @override
//   ConsumerState createState() => __CreatorStudioOptionsState();
// }
//
// class __CreatorStudioOptionsState extends ConsumerState<_CreatorStudioOptions> {
//   Future<void> openDraft() async {
//     final draftsPvd = ref.read(csDraftsProvider);
//     arreAnalytics.logEvent(
//       GAEvent.OPEN_DRAFTS_BTN_CLICK,
//       parameters: {EventAttribute.EVENT_COUNT: draftsPvd.length},
//     );
//     final selectedDraft =
//         await ArreNavigator.instance.push(AGlobalPage(child: CSDraftsScreen()));
//     if (selectedDraft is CSDraft) {
//       arreAnalytics.logEvent(
//         GAEvent.DRAFT_SELECTED,
//         parameters: {
//           "draft_duration": selectedDraft.getDuration().inSeconds,
//           "activities_count": selectedDraft.activities.length,
//           "last_updated_on": "${selectedDraft.updatedOn?.toLocal()}",
//         },
//       );
//       Navigator.of(context).pop(selectedDraft);
//     }
//   }
//
//   Future<void> createNewVoicepod() async {
//     final draftsPvd = ref.read(csDraftsProvider);
//     arreAnalytics.logEvent(
//       GAEvent.CREATE_NEW_VOICEPOD_BTN_CLICK,
//       parameters: {EventAttribute.EVENT_COUNT: draftsPvd.length},
//     );
//     final selectedMood = await showMoodSelectionSheet(context);
//     if (selectedMood is Mood) {
//       Navigator.of(context).pop(selectedMood);
//     }
//   }
//
//   Widget buildOptions(int draftsCount) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 32),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           GestureDetector(
//             behavior: HitTestBehavior.translucent,
//             onTap: openDraft,
//             child: Card(
//               elevation: 4,
//               margin: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 side: BorderSide(color: AColors.BgStroke),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Row(
//                   children: [
//                     Icon(
//                       ArreIconsV2.frame_outline,
//                       size: 32,
//                       color: AColors.tealPrimary,
//                     ),
//                     SizedBox(width: 16),
//                     Text(
//                       "Open Drafts ($draftsCount)",
//                       style: ATextStyles.sys18Bold(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 16),
//           GestureDetector(
//             behavior: HitTestBehavior.translucent,
//             onTap: createNewVoicepod,
//             child: Card(
//               elevation: 4,
//               margin: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 side: BorderSide(color: AColors.tealPrimary),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Row(
//                   children: [
//                     Icon(
//                       ArreIconsV2.create_filled,
//                       size: 32,
//                       color: AColors.tealPrimary,
//                     ),
//                     SizedBox(width: 16),
//                     Text(
//                       "Create Voicepod",
//                       style: ATextStyles.sys18Bold(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final draftsPvd = ref.watch(csDraftsProvider);
//
//     Widget child;
//     if (draftsPvd.isInitializing || (draftsPvd.drafts?.isNotEmpty ?? false)) {
//       child = Stack(
//         fit: StackFit.loose,
//         alignment: Alignment.center,
//         children: [
//           Visibility(
//             child: buildOptions(draftsPvd.drafts?.length ?? 0),
//             visible: !draftsPvd.isInitializing,
//             maintainSize: true,
//             maintainAnimation: true,
//             maintainState: true,
//           ),
//           if (draftsPvd.isInitializing)
//             CircularProgressIndicator(color: AColors.white),
//         ],
//       );
//     } else {
//       child = _CSMoodSelectionSheet();
//     }
//
//     return SafeArea(
//       child: AnimatedSize(
//         duration: Duration(milliseconds: 400),
//         child: child,
//       ),
//     );
//   }
// }
