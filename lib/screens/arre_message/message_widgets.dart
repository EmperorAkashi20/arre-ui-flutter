part of arre_message;

class _VoicepodMessageWidget extends StatelessWidget {
  final VoicepodShareMessage message;
  final EdgeInsets padding;

  const _VoicepodMessageWidget(this.message, {required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.copyWith(bottom: 0),
      child: Container(
        padding: EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 3, color: AColors.BgDark),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.postDetails.title,
              style: ATextStyles.user14Regular(AColors.textLight),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                UserAvatarV2(
                  size: 15,
                  mediaId: message.postDetails.user?.profilePictureMediaId,
                  userName: message.postDetails.user?.username,
                ),
                SizedBox(width: 4),
                Flexible(
                  child: Text(
                    "@${message.postDetails.user?.username ?? "Arre User"}",
                    style: ATextStyles.sys12Bold(AColors.textLight),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            SizedBox(height: 4),
            CupertinoButton(
              onPressed: () {
                ArreNavigator.instance.push(
                  AAppPage(
                    child: VoicepodDetailScreen(
                      postId: message.postDetails.postId,
                      autoPlay: true,
                    ),
                  ),
                );
              },
              padding: EdgeInsets.fromLTRB(0, 8, 0, padding.bottom),
              minSize: 32,
              child: Text(
                "Listen to this Voicepod",
                style: ATextStyles.sys12Bold(AColors.stateActive),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlaylistMessageWidget extends StatelessWidget {
  final PlaylistShareMessage message;
  final EdgeInsets padding;

  const _PlaylistMessageWidget(this.message, {required this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ArreNavigator.instance.push(
          AAppPage(
            child: UserPlaylistDetailsScreen(
              playlistId: message.playlist.playlistId,
              autoPlay: true,
            ),
          ),
        );
      },
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArreNetworkImage.mediaId(
              message.playlist.coverImage ?? "",
              height: 167,
              width: 167,
              showThumbnail: false,
              shape: const RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message.playlist.title,
              style: ATextStyles.sys12Bold(),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 4),
            Text(
              "${message.playlist.listOfPosts.length} Voicepods",
              style: ATextStyles.sys12Regular(AColors.textMedium),
            )
          ],
        ),
      ),
    );
  }
}

class _VoiceMessageWidget extends ConsumerStatefulWidget {
  final EdgeInsets padding;

  const _VoiceMessageWidget(this.message, {required this.padding});

  final ContentMessage message;

  @override
  ConsumerState createState() => __VoiceMessageState();
}

class __VoiceMessageState extends ConsumerState<_VoiceMessageWidget> {
  @override
  Widget build(BuildContext context) {
    final voiceMessagePlayerPvd = ref.watch(voiceMessagePlayerProvider);
    final isThisPlaying =
        voiceMessagePlayerPvd.value?.mediaId == widget.message.message.mediaId;
    return Padding(
      padding: widget.padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AudioPlayerButtonState.dynamic(
            size: 42,
            isIdle: !isThisPlaying,
            initCallback: () {
              voiceMessagePlayerPvd
                ..play()
                ..init(ArreAudioMediaSource(widget.message.message.mediaId!));
              if (widget.message.message.playedAt == 0) {
                ApiService.instance
                    .markAudioMessageAsPlayed(widget.message.message.messageId);
              }
            },
            player: voiceMessagePlayerPvd,
            gaContext: PlayerGAContext.voice_dm,
            iconColor: AColors.tealPrimary,
            iconSize: 24,
            fillColor: Colors.transparent,
          ),
          Expanded(
            child: isThisPlaying
                ? PlayerProgressBar(
                    player: voiceMessagePlayerPvd,
                    height: 5,
                    handleRadius: 6,
                    enableScrub: true,
                  )
                : Center(child: PlayerProgressBar.noProgress),
          ),
          SizedBox(width: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                ArreIconsV2.mic_filled,
                size: 15,
                color: AColors.textLight,
              ),
              Text(
                Utils.readableDuration(
                    Duration(seconds: widget.message.message.duration ?? 0)),
                style: ATextStyles.user12Regular(AColors.textLight),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TextMessageWidget extends StatelessWidget {
  final TextMessage message;

  final EdgeInsets padding;

  const _TextMessageWidget(this.message, {required this.padding});

  @override
  Widget build(BuildContext context) {
    String messageText = message.message.body ?? "";
    return Padding(
      padding: padding,
      child: ExpandableText(
        messageText,
        maxLines: 6,
        style: ATextStyles.sys14Regular(),
        expandText: "See more",
        onUrlTap: (url) {
          Utils.launchURL(url);
        },
        urlStyle: ATextStyles.sys14Bold(AColors.tealPrimary),
      ),
    );
  }
}

class _UserNameWrapper extends StatelessWidget {
  final Widget child;
  final String userId;

  const _UserNameWrapper({
    required this.child,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
          child: UserListTile.shrink(
            userId: userId,
            style: ATextStyles.sys12Bold(),
          ),
        ),
        child,
      ],
    );
  }
}

class _MessageTimeWrapper extends StatelessWidget {
  final DateTime messagedAt;
  final Widget child;

  const _MessageTimeWrapper({
    required this.messagedAt,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        child,
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 8, right: 8),
          child: Text(
            DateFormat.Hm().format(messagedAt),
            style: ATextStyles.sys12Regular(AColors.textDark),
          ),
        ),
      ],
    );
  }
}

class _MessageBoxPainter extends CustomPainter {
  final bool isSentByCurrentUser;
  final bool showEdges;

  _MessageBoxPainter({
    required this.isSentByCurrentUser,
    required this.showEdges,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 8.0;
    const extension = 8.0;
    final path = Path();

    path
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius))
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(
        Offset(size.width - radius, size.height),
        radius: Radius.circular(radius),
      )
      ..lineTo(radius, size.height)
      ..arcToPoint(
        Offset(0, size.height - radius),
        radius: Radius.circular(radius),
      )
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius));
    if (showEdges) {
      if (isSentByCurrentUser) {
        path
          ..moveTo(size.width - radius, 0)
          ..lineTo(size.width + extension, 0)
          ..lineTo(size.width, radius)
          ..lineTo(size.width - radius, 0);
      } else {
        path
          ..moveTo(radius, 0)
          ..lineTo(0, radius)
          ..lineTo(-extension, 0)
          ..lineTo(radius, 0);
      }
    }
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.fill
        ..color = isSentByCurrentUser ? Color(0xFF1B3737) : AColors.BgLight,
    );
  }

  @override
  bool shouldRepaint(covariant _MessageBoxPainter oldDelegate) {
    return oldDelegate.isSentByCurrentUser != this.isSentByCurrentUser;
  }
}
