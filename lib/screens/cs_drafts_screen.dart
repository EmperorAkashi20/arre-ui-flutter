import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/models/src/cs_draft.dart';
import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/providers/cs_providers/cs_drafts_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_gradient_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/player_widgets/play_pause_button.dart';

class CSDraftsScreen extends StatefulWidget with ArreScreen {
  final ProviderContainer container;

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.CS_DRAFTS;

  const CSDraftsScreen({
    Key? key,
    required this.container,
  }) : super(key: key);

  @override
  State<CSDraftsScreen> createState() => _CSDraftsScreenState();
}

class _CSDraftsScreenState extends State<CSDraftsScreen> {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      parent: widget.container,
      child: _DraftsBody(),
    );
  }
}

class _DraftsBody extends ConsumerWidget {
  const _DraftsBody({
    Key? key,
  }) : super(key: key);

  Future<void> verifyDraftAndReturn(WidgetRef ref, CSDraft draft) async {
    final draftsPvd = ref.read(csDraftsProvider);
    try {
      await draftsPvd.verifyDraft(draft);
      if (ref.context.mounted) {
        Navigator.of(ref.context).pop(draft);
      }
    } on CSFileNotFoundException catch (err, st) {
      if (err.code == AExceptionKey.MIC_RECORDING_FILE_NOT_FOUND) {
        showErrorMessageSnackBar(
            "We could not find some of the recorded files");
      } else if (err.code == AExceptionKey.MEDIA_ATTACHMENT_FILE_NOT_FOUND ||
          err.code == AExceptionKey.MEDIA_ATTACHMENT_THUMBNAIL_FILE_NOT_FOUND) {
        showErrorMessageSnackBar(
            "We could not find media attachment file. Please attach the media again");
      } else {
        showErrorSnackBar(err);
      }
      Utils.reportError(err, st);

      //Draft recovery
      final recoveredDraft =
          await draftsPvd.recoverDraft(draft).catchError((err, st) {
        Utils.reportError(err, st);
        return null;
      });
      if (recoveredDraft != null && ref.context.mounted) {
        Navigator.of(ref.context).pop(recoveredDraft);
      }
    } catch (err, st) {
      showErrorSnackBar(err);
      Utils.reportError(err, st);
    } finally {
      await draftsPvd.releaseLock(draftsPvd);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draftsPvd = ref.watch(csDraftsProvider);
    final deleteCallback = (CSDraft draft) async {
      final isSingleItemLeft = draftsPvd.drafts!.length == 1;
      // if (draft.isarId == ref.read(creatorStudioProvider).value.isarId) {
      //   await ref.read(creatorStudioProvider).clear();
      // }
      await draftsPvd.delete(draft);
      showInfoSnackBar("Draft deleted");
      await draftsPvd.releaseLock(draftsPvd);
      if (isSingleItemLeft) {
        Navigator.of(context).pop();
      }
    };
    Widget child;
    if (draftsPvd.drafts != null) {
      child = ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: draftsPvd.drafts!
            .map((draft) => _DraftTile(
                  draft: draft,
                  deleteCallback: deleteCallback,
                  onPressed: (draft) => verifyDraftAndReturn(ref, draft),
                ))
            .toList(),
      );
    } else if (draftsPvd.hasError) {
      child = Center(child: ArreErrorWidget(error: draftsPvd.error));
    } else {
      child = Center(child: ACommonLoader());
    }
    return WillPopScope(
      onWillPop: () async {
        //IMPROVE put it in dispose method
        await draftsPvd.releaseLock(draftsPvd);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: ABackButton(),
          title: Text("YOUR DRAFTS"),
        ),
        body: child,
      ),
    );
  }
}

class _DraftTile extends StatelessWidget {
  final CSDraft draft;
  final void Function(CSDraft draft) deleteCallback;
  final void Function(CSDraft draft) onPressed;

  const _DraftTile({
    Key? key,
    required this.draft,
    required this.deleteCallback,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: InkWell(
        onTap: () => onPressed(draft),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 8),
          child: Row(
            children: [
              _PlayAndProgress(draft: draft),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: draft.title?.trim().isEmpty ?? true
                              ? Text(
                                  "(No title)",
                                  style: ATextStyles.sys14Regular(
                                      Color(0xFF62716D)),
                                )
                              : Text(
                                  draft.title!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      ATextStyles.sys14Bold(Color(0xFF62716D)),
                                ),
                        ),
                        PopupMenuButton<String>(
                          itemBuilder: (_) => [
                            PopupMenuItem(
                              height: 32,
                              child: Row(
                                children: [
                                  Icon(
                                    ArreIconsV2.bin_filled,
                                    color: AColors.red,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "Delete",
                                    style:
                                        ATextStyles.sys14Regular(AColors.red),
                                  ),
                                ],
                              ),
                              value: "delete",
                            ),
                          ],
                          icon: Transform.rotate(
                            angle: 1.5708, // 90 degrees in radians
                            child: Icon(ArreIconsV2.kebeb_filled),
                          ),
                          splashRadius: 20,
                          onSelected: (value) {
                            if (value == "delete") deleteCallback(draft);
                          },
                        ),
                        // MenuItemButton(
                        //   child: Icon(ArreIconsV2.more_horiz_rounded),
                        // ),
                        // IconButton(
                        //   color: AColors.greyDark,
                        //   padding: EdgeInsets.all(4),
                        //   constraints:
                        //       BoxConstraints(minWidth: 36, minHeight: 36),
                        //   splashRadius: 20,
                        //   icon: Icon(ArreIconsV2.more_horiz_rounded),
                        //   onPressed: () {},
                        // ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "${draft.getDuration().inSeconds} sec",
                          style: ATextStyles.sys12Regular(AColors.textDark),
                        ),
                        Spacer(),
                        Text(
                          Utils.readableDateTime(draft.updatedOn),
                          style: ATextStyles.sys12Regular(AColors.textDark),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlayAndProgress extends ConsumerWidget {
  final CSDraft draft;

  const _PlayAndProgress({
    required this.draft,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draftPvd = ref.watch(csDraftsProvider);
    Widget child;
    if (draft == draftPvd.playingDraft) {
      child = Stack(
        fit: StackFit.expand,
        children: [
          StreamBuilder<PlayerValue>(
            stream: draftPvd.player.playerValueStream,
            initialData: PlayerValue.zero,
            builder: (context, playerValueSnapshot) {
              print("fghbjnkml ");
              return CircularProgressIndicator(
                value: playerValueSnapshot.data?.playedValue ?? 0.0,
                strokeWidth: 2,
                color: AColors.tealPrimary,
              );
            },
          ),
          AudioPlayerButtonState.gradient(
            player: draftPvd.player,
            size: 36,
            padding: EdgeInsets.zero,
            gaContext: PlayerGAContext.cs_draft,
            showLoading: draftPvd.isLoadingPlay,
          ),
        ],
      );
    } else {
      child = ArreGradientIconButton(
        icon: Icon(
          ArreIconsV2.play_filled,
          color: Colors.white,
          size: 12,
        ),
        onPressed: () {
          arreAnalytics.logEvent(GAEvent.CS_DRAFT_LIST_PREVIEW_BTN_TAP);
          ref.read(csDraftsProvider).playDraft(
                draft,
                context: context,
                onError: showErrorSnackBar,
              );
        },
      );
    }

    return SizedBox.square(
      dimension: 42,
      child: child,
    );
  }
}
