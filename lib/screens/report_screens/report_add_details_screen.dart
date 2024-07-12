// import 'dart:async';
// import 'dart:io';
// import 'package:arre_frontend_flutter/arre_routing/routing.dart';
// import 'package:arre_frontend_flutter/styles/styles.dart';
// import 'package:arre_frontend_flutter/utils/snackbars.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:record/record.dart';
// import '../../providers/arre_files_provider.dart';
// import '../../providers/report_screen_provider/report_provider.dart';
// import '../../providers/report_screen_provider/report_voicepod_provider.dart';
// import '../../providers/user_data_provider.dart';
// import '../../utils/arre_assets.dart';
// import '../../utils/utils.dart';
// import '../../widgets/arre_back_button.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../widgets/loading_animation_widget.dart';
// import '../../widgets/user_avatar.dart';
// import 'report_sucess_screen.dart';
//
// class ReportAddDetailsScreen extends ConsumerStatefulWidget with ArreScreen {
//   final Set<String>? selectedCatagories;
//   final String? userId;
//   final String? postId;
//   final bool isReportingUser;
//   const ReportAddDetailsScreen(
//       {this.selectedCatagories,
//       this.userId,
//       this.postId,
//       this.isReportingUser = false});
//
//   @override
//   _ReportAddDetailsScreenState createState() => _ReportAddDetailsScreenState();
//
//   @override
//   Uri? get location => null;
//
//   @override
//   String get screenName => "report_details_screen";
// }
//
// class _ReportAddDetailsScreenState
//     extends ConsumerState<ReportAddDetailsScreen> {
//   List<File> images = [];
//   TextEditingController _messageController = TextEditingController();
//   bool _isRecording = false;
//   final Record _audioRecorder = Record();
//   FocusNode _focusNode = FocusNode();
//   String timeRecorded = "00:00";
//   int timeInSeconds = 0;
//   String recordingPath = "";
//   int seconds = 0;
//   int minutes = 0;
//   AudioPlayer audioPlayer = AudioPlayer();
//   late Timer timer;
//   bool audioIsPlaying = false;
//   bool isAudioPaused = false;
//   int secondsPlaying = 0;
//   int minutesPlaying = 0;
//   int timeInSecondsForPreview = 0;
//   String totalDuration = "00:00";
//   Timer? timerForPreview;
//
//   @override
//   void initState() {
//     super.initState();
//     ref.read(reportCategoriesProvider);
//   }
//
//   @override
//   void dispose() {
//     timer.cancel();
//     if (timerForPreview != null) {
//       timerForPreview?.cancel();
//     }
//     _messageController.dispose();
//     _focusNode.dispose();
//     super.dispose();
//   }
//
//   startTimerForRecording() {
//     timer = Timer.periodic(Duration(seconds: 1), (timer) async {
//       timeInSeconds += 1;
//       seconds += 1;
//       if (seconds < 10) {
//         minutes == 0
//             ? timeRecorded = "00:0$seconds"
//             : timeRecorded = "0$minutes:0$seconds";
//       } else {
//         minutes == 0
//             ? timeRecorded = "00:$seconds"
//             : timeRecorded = "0$minutes:$seconds";
//       }
//       if (seconds == 59) {
//         seconds = -1;
//         minutes += 1;
//       }
//       setState(() {});
//       if (timeInSeconds >= 300) {
//         await stopRecording();
//       }
//     });
//   }
//
//   startRecording() async {
//     Directory dir = Platform.isAndroid
//         ? await getApplicationDocumentsDirectory()
//         : await getApplicationSupportDirectory();
//     new Directory(dir.path + "/" + "recordings")
//         .create(recursive: true)
//         .then((value) async {
//       String path = value.path;
//       File file = new File('$path/' + UniqueKey().toString() + ".m4a");
//       try {
//         if (await _audioRecorder.hasPermission()) {
//           await _audioRecorder.start(path: file.path);
//           bool isRecording = await _audioRecorder.isRecording();
//           setState(() {
//             _isRecording = isRecording;
//           });
//           startTimerForRecording();
//         }
//       } catch (e) {}
//     });
//   }
//
//   stopRecording() async {
//     timer.cancel();
//     recordingPath = await _audioRecorder.stop() ?? "";
//     setState(() {
//       _isRecording = false;
//       secondsPlaying = seconds;
//       minutesPlaying = minutes;
//       timeInSecondsForPreview = timeInSeconds;
//       totalDuration = timeRecorded;
//     });
//   }
//
//   checkFileSize(path) {
//     var fileSizeLimit = 1024 * 25;
//     File f = new File(path);
//     var s = f.lengthSync();
//     print(s); // returns in bytes
//     var fileSizeInKB = s / 1024;
//     var fileSizeInMB = fileSizeInKB / 1024;
//     print('file size in mb ' + fileSizeInMB.toString());
//     if (fileSizeInKB > fileSizeLimit) {
//       print("File size greater than the limit");
//       Fluttertoast.showToast(
//           msg: "File size greater than the limit",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.black,
//           textColor: Colors.white,
//           fontSize: 16.0);
//       return false;
//     } else {
//       print("file can be selected");
//       return true;
//     }
//   }
//
//   startPreviewTimer() async {
//     timerForPreview = Timer.periodic(Duration(seconds: 1), (timer) async {
//       if (timeInSecondsForPreview == 1) {
//         await audioPlayer.stop();
//         timerForPreview?.cancel();
//         setState(() {
//           audioIsPlaying = false;
//           secondsPlaying = seconds;
//           minutesPlaying = minutes;
//           timeInSecondsForPreview = timeInSeconds;
//           if (seconds < 10) {
//             minutes == 0
//                 ? timeRecorded = "00:0$seconds"
//                 : timeRecorded = "0$minutes:0$seconds";
//           } else {
//             minutes == 0
//                 ? timeRecorded = "00:$seconds"
//                 : timeRecorded = "0$minutes:$seconds";
//           }
//         });
//         return;
//       }
//       if (secondsPlaying == 0) {
//         secondsPlaying = 60;
//         minutesPlaying -= 1;
//       }
//       timeInSecondsForPreview -= 1;
//       secondsPlaying -= 1;
//       if (secondsPlaying < 10) {
//         minutesPlaying == 0
//             ? timeRecorded = "00:0$secondsPlaying"
//             : timeRecorded = "0$minutesPlaying:0$secondsPlaying";
//       } else {
//         minutesPlaying == 0
//             ? timeRecorded = "00:$secondsPlaying"
//             : timeRecorded = "0$minutesPlaying:$secondsPlaying";
//       }
//       setState(() {});
//     });
//   }
//
//   previewAudio() async {
//     if (isAudioPaused) {
//       await audioPlayer.resume();
//       startPreviewTimer();
//       setState(() {
//         audioIsPlaying = true;
//         isAudioPaused = false;
//       });
//       return;
//     }
//     if (!audioIsPlaying) {
//       await audioPlayer.play(recordingPath);
//       startPreviewTimer();
//       setState(() {
//         audioIsPlaying = true;
//       });
//     } else {
//       await audioPlayer.pause();
//       timerForPreview?.cancel();
//       setState(() {
//         audioIsPlaying = false;
//         isAudioPaused = true;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final reportVoicepodPvd = ref.watch(reportVoicepodProvider);
//     final reportUserPvd = ref.watch(reportUserProvider);
//     final userShortDataPvd =
//         ref.watch(userShortDataProvider).getData(widget.userId!);
//     return GestureDetector(
//       onTap: () {
//         if (_focusNode.hasFocus) {
//           _focusNode.unfocus();
//         }
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           leading: ABackButton(),
//           title: Text(
//             "ADD REPORT DETAILS",
//             style: TextStyle(
//               fontFamily: "Acumin Pro",
//               color: AColors.greyLight,
//               fontSize: ResponsiveFlutter.of(context).fontSize(1.67),
//               fontWeight: FontWeight.w700,
//               letterSpacing: 0.5,
//             ),
//           ),
//           actions: [
//             Container(
//               margin: EdgeInsets.only(right: 20, top: 20),
//               child: InkWell(
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text(
//                   "Cancel",
//                   style: TextStyle(
//                     fontFamily: "Acumin Pro",
//                     color: AColors.white,
//                     fontSize: ResponsiveFlutter.of(context).fontSize(1.67),
//                     fontWeight: FontWeight.w400,
//                     letterSpacing: 0.5,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height - 120,
//             margin: EdgeInsets.only(left: 20, right: 20, top: 2),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     ListTile(
//                       minLeadingWidth: 10,
//                       horizontalTitleGap: 5,
//                       contentPadding: EdgeInsets.all(0),
//                       title: RichText(
//                         text: TextSpan(
//                             text: AppLocalizations.of(context)!.reporting,
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 // fontSize: 14,
//                                 fontSize: ResponsiveFlutter.of(context)
//                                     .fontSize(1.67),
//                                 letterSpacing: 0.4,
//                                 color: AColors.greyLight,
//                                 fontFamily: "Acumin Pro"),
//                             children: [
//                               TextSpan(
//                                 text: userShortDataPvd?.username,
//                                 style: TextStyle(
//                                     fontFamily: "Acumin Pro",
//                                     fontWeight: FontWeight.w700,
//                                     // fontSize: 14,
//                                     fontSize: ResponsiveFlutter.of(context)
//                                         .fontSize(1.67),
//                                     letterSpacing: 0.4,
//                                     color: AColors.tealPrimary),
//                               ),
//                               TextSpan(
//                                 text: " for",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w700,
//                                     fontSize: ResponsiveFlutter.of(context)
//                                         .fontSize(1.67),
//                                     letterSpacing: 0.4,
//                                     color: AColors.greyLight,
//                                     fontFamily: "Acumin Pro"),
//                               ),
//                             ]),
//                       ),
//                       subtitle: Text(
//                           widget.selectedCatagories!
//                               .toList()
//                               .join(",")
//                               .toString(),
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(
//                               fontFamily: "Acumin Pro",
//                               fontWeight: FontWeight.w400,
//                               fontSize:
//                                   ResponsiveFlutter.of(context).fontSize(1.67),
//                               letterSpacing: 0.4,
//                               color: AColors.tealPrimary)),
//                       leading: Container(
//                         width: 42,
//                         height: 42,
//                         child: Material(
//                           shape: CircleBorder(),
//                           clipBehavior: Clip.hardEdge,
//                           color: Colors.transparent,
//                           child: UserAvatarV2(
//                             size: 42,
//                             mediaId: userShortDataPvd?.profilePictureMediaId,
//                             userName: userShortDataPvd?.username,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: images.length > 0 ? 160 : 130,
//                       width: double.infinity,
//                       margin: EdgeInsets.only(
//                           top: MediaQuery.of(context).size.height * 0.040),
//                       padding: EdgeInsets.only(
//                           left: 12,
//                           top: 10,
//                           bottom: images.length > 0 ? 12 : 8,
//                           right: 7),
//                       decoration: BoxDecoration(
//                           color: Theme.of(context).cardColor,
//                           borderRadius: BorderRadius.all(Radius.circular(13)),
//                           border:
//                               Border.all(width: 2, color: AColors.greyDark)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           TextFormField(
//                             controller: _messageController,
//                             focusNode: _focusNode,
//                             enableSuggestions: false,
//                             cursorColor: AColors.tealPrimary,
//                             keyboardType: TextInputType.multiline,
//                             maxLength: 500,
//                             maxLines: images.length > 0 ? 4 : 5,
//                             onTap: () {},
//                             style: TextStyle(
//                                 color: AColors.greyLight,
//                                 fontSize:
//                                     ResponsiveFlutter.of(context).fontSize(1.7),
//                                 fontFamily: "Acumin Pro",
//                                 fontWeight: FontWeight.w400),
//                             decoration: InputDecoration(
//                               isDense: true,
//                               contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 0, vertical: 4),
//                               border: InputBorder.none,
//                               hintText: AppLocalizations.of(context)!
//                                   .addIncidentDetailsHere,
//                               hintStyle: TextStyle(
//                                   color: AColors.greyLight,
//                                   fontSize: ResponsiveFlutter.of(context)
//                                       .fontSize(1.7),
//                                   fontFamily: "Acumin Pro",
//                                   fontWeight: FontWeight.w400),
//                             ),
//                           ),
//                           if (images.length > 0)
//                             Divider(
//                               thickness: 1,
//                               color: AColors.tealPrimary,
//                             ),
//                           if (images.length > 0)
//                             Container(
//                               height: 32,
//                               child: ListView.builder(
//                                   scrollDirection: Axis.horizontal,
//                                   itemCount: images.length,
//                                   itemBuilder: (context, index) {
//                                     return Stack(
//                                       children: [
//                                         GestureDetector(
//                                           onTap: () {
//                                             ArreFiles.instance
//                                                 .openFile(images[index]);
//                                           },
//                                           child: Container(
//                                             width: 79,
//                                             padding: EdgeInsets.only(
//                                                 left: 10,
//                                                 right: 10,
//                                                 top: 5,
//                                                 bottom: 5),
//                                             margin: EdgeInsets.only(
//                                                 right: 15, top: 5),
//                                             decoration: BoxDecoration(
//                                               color: AColors.white,
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(100)),
//                                             ),
//                                             child: Text(
//                                               "${images[index].path.split('/').last}",
//                                               overflow: TextOverflow.ellipsis,
//                                               style: TextStyle(
//                                                 fontSize: 12,
//                                                 fontFamily: 'Acumin Pro',
//                                                 color: AColors.tealPrimary,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           right: 6,
//                                           bottom: 10,
//                                           child: InkWell(
//                                             onTap: () {
//                                               images.removeAt(index);
//                                               setState(() {});
//                                             },
//                                             child: Container(
//                                               height: 23,
//                                               width: 23,
//                                               child: SvgPicture.asset(
//                                                 ArreAssets.X_CIRCLE_ICON,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     );
//                                   }),
//                             )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.013,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         InkWell(
//                           onTap: () async {
//                             await pickImagesFromGallery(
//                                 onError: showErrorSnackBar);
//                           },
//                           child: Container(
//                             padding: EdgeInsets.only(
//                                 left: 12, right: 12, top: 6, bottom: 6),
//                             decoration: BoxDecoration(
//                                 border: Border.all(
//                                     color: AColors.greyLight, width: 1),
//                                 borderRadius: BorderRadius.circular(13),
//                                 color: Colors.white),
//                             child: Row(
//                               children: [
//                                 SvgPicture.asset(
//                                   ArreAssets.ATTACH_IMAGE_ICON,
//                                 ),
//                                 SizedBox(
//                                   width: 8,
//                                 ),
//                                 Text(
//                                   "Attach Evidence",
//                                   style: TextStyle(
//                                     fontFamily: 'Acumin Pro',
//                                     color: AColors.greyMedium,
//                                     fontSize: ResponsiveFlutter.of(context)
//                                         .fontSize(1.67),
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.024,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           border:
//                               Border.all(color: AColors.greyMedium, width: 2),
//                           borderRadius: BorderRadius.circular(13),
//                           color: Theme.of(context).cardColor),
//                       padding: EdgeInsets.only(
//                           left: 10, right: 10, top: 14, bottom: 14),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Align(
//                                 alignment: Alignment.topLeft,
//                                 child: Text(
//                                   AppLocalizations.of(context)!.recordAudio,
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     fontFamily: 'Acumin Pro',
//                                     color: AColors.tealPrimary,
//                                     fontSize: ResponsiveFlutter.of(context)
//                                         .fontSize(1.67),
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 7,
//                               ),
//                               Text(
//                                 "5 mins max.",
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                   fontFamily: 'Acumin Pro',
//                                   color: AColors.greyLight,
//                                   fontSize: ResponsiveFlutter.of(context)
//                                       .fontSize(1.33),
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             AppLocalizations.of(context)!
//                                 .youMayAlsoWantToAddAVoiceNoteOfTheIncidentForUsToUnderstandYourGrievance,
//                             style: TextStyle(
//                               fontFamily: 'Acumin Pro',
//                               color: AColors.greyLight,
//                               fontSize:
//                                   ResponsiveFlutter.of(context).fontSize(1.67),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 14,
//                           ),
//                           Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               if (timeInSeconds > 0 || _isRecording)
//                                 Container(
//                                   width: double.infinity,
//                                   height: 40,
//                                   decoration: BoxDecoration(
//                                     color: AColors.greyLight,
//                                     borderRadius: BorderRadius.circular(100),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       !_isRecording
//                                           ? InkWell(
//                                               onTap: () {
//                                                 clearRecordAudio();
//                                                 setState(() {});
//                                               },
//                                               child: Container(
//                                                 margin:
//                                                     EdgeInsets.only(left: 1),
//                                                 padding: EdgeInsets.all(10),
//                                                 height: 37,
//                                                 width: 37,
//                                                 decoration: BoxDecoration(
//                                                   color: AColors.white,
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           100),
//                                                 ),
//                                                 child: SvgPicture.asset(
//                                                   ArreAssets
//                                                       .REPORT_PARTICIPANT_TRASH_ICON,
//                                                 ),
//                                               ),
//                                             )
//                                           : Container(
//                                               margin: EdgeInsets.only(left: 1),
//                                               padding: EdgeInsets.all(10),
//                                               height: 37,
//                                               width: 37,
//                                               decoration: BoxDecoration(
//                                                 color: Colors.transparent,
//                                                 borderRadius:
//                                                     BorderRadius.circular(100),
//                                               ),
//                                             ),
//                                       Container(
//                                         margin: EdgeInsets.only(right: 56),
//                                         padding:
//                                             EdgeInsets.only(top: 4, bottom: 2),
//                                         width: 61,
//                                         decoration: BoxDecoration(
//                                           color: AColors.white,
//                                           borderRadius:
//                                               BorderRadius.circular(100),
//                                         ),
//                                         child: Text(
//                                           timeRecorded,
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: AColors.orangePrimary,
//                                             fontSize: 14,
//                                             fontFamily: "Acumin Pro",
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   InkWell(
//                                     onTap: () async {
//                                       if (recordingPath.isNotEmpty) {
//                                         previewAudio();
//                                         return;
//                                       }
//                                       if (timeInSeconds < 300) {
//                                         if (!_isRecording) {
//                                           await startRecording();
//                                         } else {
//                                           await stopRecording();
//                                         }
//                                       }
//                                     },
//                                     child: Image.asset(
//                                       !_isRecording && timeInSeconds == 0
//                                           ? ArreAssets
//                                               .REPORT_PARTICIPANT_MIC_BUTTON_IMG
//                                           : _isRecording
//                                               ? ArreAssets
//                                                   .REPORT_PARTICIPANT_PAUSE_BUTTON_IMG
//                                               : audioIsPlaying
//                                                   ? ArreAssets
//                                                       .REPORT_PARTICIPANT_PAUSE_BUTTON_IMG
//                                                   : ArreAssets
//                                                       .REPORT_PARTICIPANT_PLAY_BUTTON_IMG,
//                                       height: 48,
//                                       width: 48,
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 InkWell(
//                   onTap: () {
//                     List<String> imageFilePaths =
//                         images.map((file) => file.path).toList();
//                     if (widget.isReportingUser) {
//                       reportUserPvd.submit(
//                         userId: widget.userId!,
//                         reason: _messageController.text,
//                         recordingFile: recordingPath,
//                         selectedCatagory: widget.selectedCatagories!.toList(),
//                         onError: showErrorSnackBar,
//                         onSuccess: () {
//                           _messageController.clear();
//                           clearRecordAudio();
//                           images.clear();
//                           ArreNavigator.instance.push(AAppPage(
//                               child:
//                                   ReportSucessScreen(isReportingUser: true)));
//                         },
//                       );
//                     } else {
//                       reportVoicepodPvd.submit(
//                         postId: widget.postId!,
//                         reason: _messageController.text,
//                         recordingFile: recordingPath,
//                         evidanceId: imageFilePaths,
//                         selectedCatagory: widget.selectedCatagories!.toList(),
//                         onError: showErrorSnackBar,
//                         onSuccess: () {
//                           _messageController.clear();
//                           clearRecordAudio();
//                           images.clear();
//                           ArreNavigator.instance.push(AAppPage(
//                               child: ReportSucessScreen(
//                             isReportingUser: false,
//                           )));
//                         },
//                       );
//                     }
//                   },
//                   child: Container(
//                     padding: EdgeInsets.only(
//                         top: 14, bottom: 14, right: 30, left: 30),
//                     decoration: BoxDecoration(
//                       color: AColors.tealPrimary,
//                       borderRadius: BorderRadius.all(Radius.circular(13)),
//                     ),
//                     child:
//                         reportVoicepodPvd.isLoading || reportUserPvd.isLoading
//                             ? LoadingAnimation(
//                                 height: 20,
//                                 width: 20,
//                               )
//                             : Text("Submit",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontFamily: "Acumin Pro",
//                                     color: AColors.white,
//                                     fontSize: ResponsiveFlutter.of(context)
//                                         .fontSize(1.67),
//                                     fontWeight: FontWeight.w700)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void clearRecordAudio() async {
//     if (audioIsPlaying) {
//       if (timerForPreview != null) {
//         timerForPreview?.cancel();
//       }
//       await audioPlayer.stop();
//     }
//     _isRecording = false;
//     timeRecorded = "00:00";
//     timeInSeconds = 0;
//     recordingPath = "";
//     seconds = 0;
//     minutes = 0;
//     timer.cancel();
//     audioIsPlaying = false;
//     isAudioPaused = false;
//     secondsPlaying = 0;
//     minutesPlaying = 0;
//     timeInSecondsForPreview = 0;
//     totalDuration = "00:00";
//   }
//
//   Future<void> pickImagesFromGallery({
//     required void Function(dynamic error) onError,
//   }) async {
//     try {
//       final pickedFile = await ArreFiles.pickMultipleMedia();
//       if (pickedFile != null) {
//         images.addAll(pickedFile);
//         setState(() {});
//       }
//     } catch (err, st) {
//       onError(err);
//       Utils.reportError(err, st);
//     }
//   }
// }
