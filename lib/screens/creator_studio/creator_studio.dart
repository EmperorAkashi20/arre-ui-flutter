library creator_studio;

import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/main.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_audio_insertable.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/models/src/cs_import_activity.dart';
import 'package:arre_frontend_flutter/models/src/cs_mood.dart';
import 'package:arre_frontend_flutter/models/src/cs_voice_effect.dart';
import 'package:arre_frontend_flutter/models/src/mixins.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/communities/community_languages_data_provider.dart';
import 'package:arre_frontend_flutter/providers/communities/my_communities_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_form_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_drafts_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_import_activity_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_moods_provider.dart';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/screens/cs_drafts_screen.dart';
import 'package:arre_frontend_flutter/screens/permission_sheet.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/widgets/action_sheet_common.dart';
import 'package:arre_frontend_flutter/widgets/arre_close_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_gradient_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/compact_popup_menu.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_frontend_flutter/widgets/non_uniform_border.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/play_pause_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/player_speed_button.dart';
import 'package:arre_frontend_flutter/widgets/shimmer_highlighter.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/creator_studio_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_activity_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_audio_insertables_providers.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_bg_music_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_preview_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_recording_provider.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_voice_effects_provider.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/player_progress_bar.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:arre_frontend_flutter/widgets/volume_adjuster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:recase/recase.dart';
import '../../models/models.dart';
import '../../styles/styles.dart';
import '../../utils/utils.dart';
import '../../widgets/arre_icons.dart';
import '../onboarding/AB1_welcome_screen.dart';

part 'cs_bg_music_sheet.dart';

part 'cs_confirmation_sheets.dart';

part 'cs_recording_section.dart';

part 'cs_voice_effects_sheet.dart';

part 'cs_form_section.dart';

part 'cs_common_widgets.dart';

part 'cs_insertables_section.dart';

// part "cs_mood_selection_sheet.dart";

part "creator_studio_entry.dart";

double _getDynamicSize(WidgetRef ref, double size, [double minSize = 0]) {
  return (ref.read(creatorStudioProvider).sizeFactor * size)
      .clamp(minSize, double.infinity);
}

extension on num {
  double csDynamic(WidgetRef ref, [double minSize = 0]) {
    return (ref.read(creatorStudioProvider).sizeFactor * this)
        .clamp(minSize, double.infinity);
  }
}

///Use [openCreatorStudio] for showing Creator Studio from the app
class CreatorStudioScreen extends ConsumerWidget with ArreScreen {
  final String? communityId;
  final String? title;
  final String? language;

  ///Privacy option is hidden and the draft is navigated to DraftedScreen
  final bool draftOnlyMode;

  const CreatorStudioScreen({
    Key? key,
    this.communityId,
    this.title,
    this.draftOnlyMode = false,
    this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        csActivityProvider,
        csVoiceEffectsProvider,
        csBgMusicProvider,
        csFormProvider,
        csMicRecordingProvider,
        csImportAudioProvider,
        csPreviewProvider,
        csInsertablesProvider,
        // csMoodProvider,
        creatorStudioProvider,
      ],
      child: _CreatorStudioScreenBody(
        communityId: communityId,
        title: title,
        draftOnlyMode: draftOnlyMode,
        language: language,
      ),
    );
  }

  @override
  Uri? get uri => Uri.parse('/creator_studio');

  @override
  String get screenName => GAScreen.CREATOR_STUDIO;

  @override
  bool get isOnboardingRequired => false;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/creator_studio") {
      return AGlobalPage(child: CreatorStudioScreen());
    }
    return null;
  }
}

class _CreatorStudioScreenBody extends ConsumerStatefulWidget {
  final String? communityId, title, language;
  final bool draftOnlyMode;

  const _CreatorStudioScreenBody({
    Key? key,
    required this.communityId,
    required this.title,
    required this.draftOnlyMode,
    required this.language,
  }) : super(key: key);

  @override
  ConsumerState createState() => _CreatorStudioScreenState();
}

class _CreatorStudioScreenState extends ConsumerState<_CreatorStudioScreenBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    assert(Navigator.of(context) ==
        ArreNavigator.instance.navigatorKey?.currentState);
    super.initState();
    ref.read(creatorStudioProvider)
      ..init(vsync: this)
      ..validate(shouldNotify: false);
    Future(() {
      final csFormPvd = ref.read(csFormProvider);
      if (widget.communityId.isValid) {
        csFormPvd.setCommunityOrPrivacy(widget.communityId!);
      }
      if (widget.title.isValid) {
        csFormPvd.titleTextEditingCtrl.text = widget.title ?? "";
      }
      if (widget.language.isValid) {
        csFormPvd.selectLanguage(widget.language);
      }
    });
    final currentUserId = ref.read(currentUserProvider).userId!;
    ref.read(userShortDataProvider).fetchData(currentUserId);
  }

  void _initSizeFactor() {
    const idealSize = 780.0;
    final deviceHeight = MediaQuery.of(context).size.height;
    if (deviceHeight < idealSize) {
      ref.read(creatorStudioProvider).sizeFactor = deviceHeight / idealSize;
      log(
        "Dynamic Creator studio with size factor ${deviceHeight / idealSize}",
        name: "CREATOR_STUDIO",
      );
    }
  }

  Future<void> _showDraftedScreen() async {
    arreAnalytics.logEvent(GAEvent.CS_DRAFT_NEXT_CLICK);
    try {
      await ref.read(creatorStudioProvider).save();
      final validationError =
          await ref.read(creatorStudioProvider).validate(shouldNotify: true);
      if (validationError != null) throw validationError;
      final draftsPvd = ref.read(csDraftsProvider);

      ArreNavigator.instance.push(
        AGlobalPage(
          child: AB1CVDraftedScreen(
            draft: draftsPvd.drafts!.first,
            postCallback: () {
              return _post(replaceWithPostScreen: false);
            },
          ),
        ),
      );
    } catch (err, st) {
      Utils.reportError(err, st);
      showSnackBarV2(context: context, error: err);
    }
  }

  Future<String> _post({bool replaceWithPostScreen = true}) async {
    final creatorStudioPvd = ref.read(creatorStudioProvider);
    try {
      var (String postId, String? message) = await creatorStudioPvd.submit();
      arreAnalytics.logEvent(GAEvent.CS_POST_SUCCESSFUL);
      if (message.isValid) {
        showInfoSnackBar(message!);
      }
      arreAnalytics.logEvent(GAEvent.CS_VOICEPOD_POST_SUCCESS);
      if (mounted && replaceWithPostScreen) {
        Navigator.of(context).pop();
        ArreNavigator.instance.push(AAppPage(
          child: VoicepodDetailScreen(
            postId: postId,
            showFirstTimeCta: true,
          ),
        ));
      }
      DeviceAppManager.instance
          .incrementPodCreatedCount()
          .then((value) => DeviceAppManager.instance.rateAndReviewApp(value))
          .catchError((err, st) => Utils.reportError(err, st));
      return postId;
    } catch (exception) {
      arreAnalytics.logEvent(GAEvent.CS_POST_FAILED);
      if (exception is CSActivityValidationException) {
        creatorStudioPvd.showRecordingTab();
      } else if (exception is CSFormValidationException) {
        creatorStudioPvd.showFormTab();
      }
      showErrorSnackBar(exception);
      rethrow;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initSizeFactor();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final releaseError =
            await ref.read(csActivityProvider).canReleaseActivity();
        if (releaseError != null) {
          showErrorMessageSnackBar(releaseError);
          return false;
        }
        if (widget.draftOnlyMode) return true;
        return ref.read(creatorStudioProvider).save().then((value) {
          if (value != null) {
            showSnackBar(
                content: Text("Your changes have been saved to drafts"));
          }
          return true;
        }).catchError((err, st) {
          showErrorSnackBar(err);
          Utils.reportError(err, st,
              reason: "Save draft while popping CS screen");
          //Improve instead of popping even if saving draft failed. Show a way to report error or resolve
          return true;
        });
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          Material(color: AColors.BgDark),
          // if (bgImageUrl != null) ArreBgMoodImage(imageUrl: bgImageUrl),
          Scaffold(
            backgroundColor: Color(0xFF171e26),
            resizeToAvoidBottomInset: false,
            bottomSheet: _RecordingSection(),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              // leadingWidth: 36,
              titleSpacing: 0,
              leading: ACloseButton(iconSize: 16),
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              elevation: 0,
              title: Text(
                'CREATOR STUDIO',
                style: ATextStyles.sys14Bold(AColors.white, 1.6),
              ),
              actions: [
                if (!widget.draftOnlyMode) _DraftsButton(),
                Center(
                  child: Consumer(builder: (context, ref, child) {
                    final isValid = ref.watch(creatorStudioProvider).isValid;
                    return FilledButton(
                      onPressed: () {
                        if (widget.draftOnlyMode) {
                          _showDraftedScreen();
                        } else {
                          arreAnalytics.logEvent(GAEvent.CS_POST_TAP);
                          _post();
                        }
                      },
                      style: ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.padded,
                        minimumSize: MaterialStatePropertyAll(Size(64, 28)),
                        maximumSize: MaterialStatePropertyAll(Size(92, 28)),
                        textStyle:
                            MaterialStatePropertyAll(ATextStyles.sys14Bold()),
                        foregroundColor:
                            MaterialStatePropertyAll(AColors.white),
                        backgroundColor: MaterialStatePropertyAll(
                            isValid ? AColors.tealPrimary : AColors.greyDark),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                      ),
                      child: Consumer(
                        builder: (context, ref, child) {
                          final csPvd = ref.watch(creatorStudioProvider);
                          return csPvd.isSubmitting
                              ? SizedBox.square(
                                  dimension: 16,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                )
                              : child!;
                        },
                        child: Text(widget.draftOnlyMode ? "Next" : "Post"),
                      ),
                    );
                  }),
                ),
                SizedBox(width: 20),
              ],
            ),
            body: SafeArea(
              child: _FormSection(showPrivacyOption: !widget.draftOnlyMode),
            ),
          ),
        ],
      ),
    );
  }
}

class _DraftsButton extends ConsumerWidget {
  const _DraftsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget? child;
    final draftsLength = ref.watch(csDraftsProvider).length;
    final isRunning =
        ref.watch(csActivityProvider.select((value) => value.isRunning));
    if (draftsLength > 0) {
      child = Center(
        child: CupertinoButton(
          child: Text(
            "Drafts ($draftsLength)",
            style: ATextStyles.sys14Bold(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          onPressed: isRunning ? null : () => _openAndGetDrafts(ref),
        ),
      );
    }
    return child ?? const SizedBox();
  }
}

Future<void> _openAndGetDrafts(WidgetRef ref) async {
  arreAnalytics.logEvent(GAEvent.CS_DRAFT_BTN_TAP);
  if (ref.read(csActivityProvider).isRunning) return;
  final draft = await ArreNavigator.instance.push(
    AGlobalPage(
      child: CSDraftsScreen(
        container: ProviderScope.containerOf(ref.context),
      ),
    ),
  );
  if (draft is CSDraft) {
    ref.read(creatorStudioProvider).import4mDraft(draft);
  }
}
