part of edit_profile;



class _PersonalDetailsSection extends ConsumerWidget {
  final bool showUsernameField;
  final bool showBioField;
  final bool showExternalLinkField;

  _PersonalDetailsSection({
    this.showUsernameField = true,
    this.showExternalLinkField = true,
    this.showBioField = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.read(editProfileProvider).draft;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFieldLabel(
                label: Text('Name*'),
                child: TextFormField(
                  initialValue: draft.name,
                  textInputAction: TextInputAction.next,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autocorrect: false,
                  onSaved: (value) => draft.name = value,
                  validator: (String? value) {
                    if (!value.isValid) {
                      return "Please enter first name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(),
                ),
              ),
            ),
            // SizedBox(width: 20),
            // Expanded(
            //   child: TextFieldLabel(
            //     label: Text('Last Name*'),
            //     child: TextFormField(
            //       initialValue: draft.lastName,
            //       textInputAction: TextInputAction.next,
            //       autocorrect: false,
            //       autovalidateMode: AutovalidateMode.onUserInteraction,
            //       onSaved: (value) => draft.lastName = value,
            //       validator: (String? value) {
            //         if (!value.isValid) {
            //           return "Please enter last name";
            //         }
            //         return null;
            //       },
            //     ),
            //   ),
            // )
          ],
        ),
        SizedBox(height: 16),
        if (showUsernameField) ...[
          Consumer(builder: (context, ref, _) {
            final usernamePvd = ref.watch(usernameProvider);
            return TextFieldLabel(
              label: Text('Username*'),
              child: TextFormField(
                key: usernamePvd.textFieldKey,
                controller: usernamePvd.usernameTextEditCtrl,
                textInputAction: TextInputAction.next,
                onSaved: (value) => draft.userName = value,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(usernamePvd.usernameRegexp),
                ],
                maxLength: 15,
                validator: usernamePvd.usernameValidator,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                maxLines: 1,
                autocorrect: false,
                cursorColor: AColors.tealPrimary,
                onChanged: usernamePvd.onUsernameChanged,
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  hintText: "username",
                ),
              ),
            );
          }),
          SizedBox(height: 16),
        ],
        if (showBioField)
          TextFieldLabel(
            label: Text('Bio (optional)'),
            child: TextFormField(
              initialValue: draft.bio,
              minLines: 3,
              maxLines: 4,
              maxLength: 200,
              textInputAction: TextInputAction.newline,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onSaved: (value) => draft.bio = value,
              decoration:
                  InputDecoration(hintText: "We wanna know the amazing you!"),
            ),
          ),
        if (showExternalLinkField) ...[
          SizedBox(height: 8),
          TextFieldLabel(
            label: Text("External URL link (optional)"),
            child: _SocialAccountFieldTile(
              icon: Icon(ArreIconsV2.link_filled, color: AColors.white),
              padding: EdgeInsets.zero,
              textField: TextFormField(
                initialValue: draft.website,
                autocorrect: false,
                keyboardType: TextInputType.url,
                onSaved: (value) => draft.website = value,
                decoration:
                    InputDecoration(hintText: "Add link, eg: www.abcd.com"),
              ),
            ),
          )
        ]
      ],
    );
  }
}

class _VoiceBioSection extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() => __VoiceBioSectionState();
}

class __VoiceBioSectionState extends ConsumerState<_VoiceBioSection> {
  Future<void> record() async {
    final hasPermission = await handlePermission(Permission.microphone);
    if (!hasPermission.item1) {
      throw ArreException("App needs microphone permission to record");
    }
    if (!hasPermission.item2) return;
    await ref.read(voiceBioProvider).record();
  }

  Future<void> deleteVoiceBio() async {
    arreAnalytics.logEvent(GAEvent.AUDIO_BIO_RECCORDING_DELETE_CLICKED);
    final canDelete = await showModalBottomSheet(
      context: context,
      showDragHandle: true,
      routeSettings: RouteSettings(name: GAScreen.DELETE_BIO_CONFIRM_SHEET),
      builder: (_) => ConfirmationSheet(
        title: "Delete Voice Bio?",
        primaryBtnColor: AColors.red,
        actionsDirection: Axis.horizontal,
        description:
            "Are you sure you want to delete your Voice bio?\nYou will have to record it again",
        primaryBtnLabel: "Yes, Delete it",
        secondaryBtnLabel: "Cancel",
      ),
    );

    if (canDelete == true) {
      arreAnalytics.logEvent(GAEvent.AUDIO_BIO_RECORDING_CONFIRM_DELETE_CLICK);
      ref.read(voiceBioProvider).clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final voiceBioPvd = ref.watch(voiceBioProvider);
    final isRecording = voiceBioPvd.isRecording;

    Color borderColor;

    if (!voiceBioPvd.hasRecording && !isRecording) {
      borderColor = AColors.red;
    } else if (voiceBioPvd.isPreviewing) {
      borderColor = AColors.BgStroke;
    } else {
      borderColor = AColors.BgStroke;
    }

    final leadingActions = Row(
      children: [
        if (voiceBioPvd.isDraft)
          SizedBox(
            height: 28,
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: FilledButton(
                style: ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 10)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    textStyle:
                        MaterialStatePropertyAll(ATextStyles.sys12Bold())),
                onPressed: () {
                  arreAnalytics
                      .logEvent(GAEvent.AUDIO_BIO_RECCORDING_SAVE_CLICKED);
                  voiceBioPvd.save();
                },
                child: Text("Save"),
              ),
            ),
          ),
        SizedBox(width: 4),
        StreamBuilder(
          stream: voiceBioPvd.player.playingValueStream,
          builder: (context, snapshot) {
            if (snapshot.data != true) {
              return FilledIconButton(
                icon: Icon(ArreIconsV2.play_filled, size: 16),
                size: 28,
                onPressed: () => voiceBioPvd.startPreview(),
                fillColor: AColors.BgStroke,
              );
            }
            return FilledIconButton(
              icon: Icon(ArreIconsV2.stop_filled, size: 16),
              size: 28,
              onPressed: () => voiceBioPvd.stopPreview(),
              fillColor: AColors.BgStroke,
            );
          },
        ),
      ],
    );

    final trailingActions = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (voiceBioPvd.isDraft) ...[
          if (voiceBioPvd.hasRecording && !voiceBioPvd.isRecording)
            FilledIconButton(
              icon: Icon(ArreIconsV2.restart_outline, size: 16),
              size: 28,
              onPressed: () {
                arreAnalytics
                    .logEvent(GAEvent.AUDIO_BIO_RECCORDING_RESET_CLICKED);
                voiceBioPvd.clear();
              },
              fillColor: AColors.BgStroke,
            ),
          if (isRecording)
            FilledIconButton(
              icon: Icon(ArreIconsV2.pause_filled, size: 16),
              size: 28,
              onPressed: () {
                arreAnalytics
                    .logEvent(GAEvent.AUDIO_BIO_RECCORDING_PAUSE_CLICKED);
                voiceBioPvd.stopRecording();
              },
              fillColor: AColors.BgStroke,
            )
          else
            FilledIconButton(
              icon: Icon(ArreIconsV2.mic_filled, size: 16),
              size: 28,
              onPressed: voiceBioPvd.errorText == null ? () => record() : null,
              fillColor: AColors.BgStroke,
            ),
        ] else
          FilledIconButton(
            icon: Icon(
              ArreIconsV2.bin_filled,
              size: 16,
              color: AColors.red,
            ),
            size: 28,
            onPressed: deleteVoiceBio,
            fillColor: AColors.BgStroke,
          ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AColors.BgLight,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  if (voiceBioPvd.hasRecording && !voiceBioPvd.isRecording)
                    Expanded(child: leadingActions)
                  else
                    Spacer(),
                  Column(
                    children: [
                      if (!voiceBioPvd.hasRecording && !isRecording)
                        Text(
                          "Record Voice Bio",
                          style: ATextStyles.sys12Bold(AColors.red),
                        )
                      else
                        Row(
                          children: [
                            if (voiceBioPvd.isPreviewing)
                              Icon(ArreIconsV2.voice_filled, size: 16)
                            else if (voiceBioPvd.isRecording)
                              Icon(ArreIconsV2.mic_filled,
                                  size: 16, color: AColors.red)
                            else if (voiceBioPvd.isDraft &&
                                voiceBioPvd.errorText == null)
                              Icon(ArreIconsV2.mic_filled,
                                  size: 16, color: AColors.greyDark)
                            else
                              Icon(ArreIconsV2.play_filled, size: 16),
                            SizedBox(width: 4),
                            if (isRecording)
                              StreamBuilder(
                                stream: Stream.periodic(Duration(seconds: 1)),
                                builder: (context, _) {
                                  return Text(
                                    "00:${voiceBioPvd.curRecordingDuration.inSeconds.toStringAsFixedDigits(2)}/00:30",
                                    style: ATextStyles.user12Bold(),
                                  );
                                },
                              )
                            else
                              Text(
                                "00:${voiceBioPvd.curRecordingDuration.inSeconds.toStringAsFixedDigits(2)}/00:30",
                                style: ATextStyles.user12Bold(),
                              ),
                          ],
                        ),
                      if (voiceBioPvd.errorText != null)
                        Text(
                          voiceBioPvd.errorText!,
                          style: ATextStyles.sys12Regular(AColors.red),
                        ),
                    ],
                  ),
                  Expanded(child: trailingActions),
                ],
              ),
              if (voiceBioPvd.isPreviewing)
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 4),
                  child: PlayerProgressBar(
                    player: voiceBioPvd.player,
                    enableScrub: false,
                    padding: EdgeInsets.zero,
                    height: 5,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
