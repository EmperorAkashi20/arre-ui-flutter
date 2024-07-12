part of voicepod;

class _AfterCreationCta extends ConsumerStatefulWidget {
  final Post postDetails;

  const _AfterCreationCta(this.postDetails);

  @override
  ConsumerState createState() => __AfterCreationCtaState();
}

class __AfterCreationCtaState extends ConsumerState<_AfterCreationCta> {
  @override
  Widget build(BuildContext context) {
    final currentUserId = ref.watch(currentUserProvider).userId;
    final profilePvd = ref.watch(userProfileProvider(currentUserId!));
    if (!profilePvd.hasData) {
      return SizedBox();
    }
    switch (profilePvd.data?.moderationStatus) {
      // case 'unmoderated':
      //   return _ProfileCompleteCta(
      //     title: 'Did you know?',
      //     description:
      //         'Completing your profile will ensure that your voicepod is visible to many more members of Arré Voice',
      //   );
      // case 'rejected':
      //   return _ProfileCompleteCta(
      //     title: 'You can score more reach!',
      //     description:
      //         'An exclusive tip for you - a complete profile boosts visibility and engagement.',
      //   );
      default:
        return _VoicepodShareCta(widget.postDetails);
    }
  }
}

class _ProfileCompleteCta extends StatelessWidget {
  final String title, description;

  const _ProfileCompleteCta({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Did you know?",
            style: ATextStyles.sys20Bold(AColors.textLight),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Text(
              "Completing your profile will ensure that your voicepod is visible to many more members of Arré Voice",
              style: ATextStyles.sys14Regular(AColors.textMedium),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 129),
            child: Image.asset(
              ArreAssets.ARROWS_ILLUSTRATION_IMG,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            width: 210,
            child: FilledButton(
              onPressed: () {
                arreAnalytics.logEvent(
                  GAEvent.PROFILE_COMPLETE_NUDGE_CLICK,
                  parameters: {
                    EventAttribute.GA_CONTEXT: "after_voicepod_created"
                  },
                );
                ArreNavigator.instance.push(AGlobalPage(
                    child: EditProfileScreen.mini(userDetails: null)));
              },
              child: Text("Complete Profile"),
            ),
          )
        ],
      ),
    );
  }
}

class _VoicepodShareCta extends ConsumerStatefulWidget {
  final Post post;

  _VoicepodShareCta(this.post);

  @override
  ConsumerState createState() => __VoicepodShareCtaState();
}

class __VoicepodShareCtaState extends ConsumerState<_VoicepodShareCta> {
  @override
  void initState() {
    super.initState();
    Utils.checkShareableAppInstallStatus(widget.post.postUrl).whenComplete(() {
      setState(() {});
    });
  }

  void shareOnApp(ShareableApp app) {
    Utils.shareOnApp(
      app: app,
      entityId: widget.post.postId,
      entityType: EntityType.voicepod,
      text: "${widget.post.title}\n${widget.post.postUrl}",
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Text(
              "Yay! Your voicepod was posted successfully",
              style: ATextStyles.sys20Bold(AColors.textLight),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Text(
              "Spread the word by sharing it with your friends and family.",
              style: ATextStyles.sys14Regular(AColors.textMedium),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FilledIconButton(
                onPressed: () {
                  showShareTraySheet(
                    entityType: "voicepod",
                    entityId: widget.post.postId,
                  );
                },
                label: Text("Share as a\nmessage"),
                size: 48,
                icon: Icon(
                  ArreIconsV2.audio_message_outline,
                  size: 28,
                ),
                fillColor: AColors.BgLight,
                borderColor: AColors.BgStroke,
              ),
              FilledIconButton(
                onPressed: () {
                  _performPostAction(
                    ref,
                    action: _PostActionsEnum.copyLink,
                    voicepod: widget.post,
                  );
                },
                label: Text("Copy Link"),
                size: 48,
                icon: Icon(
                  ArreIconsV2.link_filled,
                  size: 28,
                ),
                fillColor: AColors.BgLight,
                borderColor: AColors.BgStroke,
              ),
              if (ShareableApp.x.isInstalled == true)
                FilledIconButton(
                  onPressed: () => shareOnApp(ShareableApp.x),
                  label: Text(ShareableApp.x.name),
                  size: 48,
                  icon: Icon(
                    ArreIconsV2.x_outline,
                    size: 28,
                  ),
                  fillColor: Color(0xFF1C1C1B),
                  borderColor: AColors.BgStroke,
                ),
              if (ShareableApp.whatsapp.isInstalled == true)
                FilledIconButton(
                  onPressed: () => shareOnApp(ShareableApp.whatsapp),
                  label: Text(ShareableApp.whatsapp.name),
                  size: 48,
                  icon: Icon(
                    ArreIconsV2.wa_outline,
                    size: 28,
                  ),
                  fillColor: Color(0xFF00E510),
                ),
            ].joinSeparator(SizedBox(width: 16)),
          ),
        ],
      ),
    );
  }
}
