part of creator_studio;

enum EffectTileState {
  idle,
  playing,
  // applying,
  applied,
}

class _EffectTile extends ConsumerWidget {
  // final GBgMusicData_response_data musicData;
  final bool isApplied, isSelected;
  final String imageUrl, title;
  final VoidCallback onTap, onApplyOrRemovePressed;
  final SimpleAudioPlayerProvider2 player;

  const _EffectTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
    required this.onApplyOrRemovePressed,
    required this.player,
    required this.isApplied,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget statusIcon;

    if (isSelected) {
      statusIcon = StreamBuilder(
        stream: player.playingValueStream,
        builder: (context, snapshot) {
          return ACommonLoader.dancingBars(
            size: 22,
            animate: snapshot.data == true,
          );
        },
      );
    } else if (isApplied) {
      statusIcon = Icon(
        ArreIconsV2.tick_outline,
        size: 22,
        color: AColors.white,
      );
    } else {
      statusIcon = Icon(
        ArreIconsV2.play_filled,
        size: 14,
        color: AColors.white,
      );
    }

    Widget leading = SizedBox.square(
      dimension: 65,
      child: Stack(
        children: [
          Positioned.fill(
            child: ArreNetworkImage(
              imageUrl,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 17,
              backgroundColor: AColors.overlayBlack,
              child: statusIcon,
            ),
          ),
        ],
      ),
    );

    Widget tile = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        child: Row(
          children: [
            leading,
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: ATextStyles.sys14Bold(AColors.greyLight),
                  ),
                  AnimatedSize(
                    duration: Duration(milliseconds: 300),
                    alignment: Alignment.centerLeft,
                    clipBehavior: Clip.none,
                    child: isSelected
                        ? PlayerProgressBar(
                            handleRadius: 4,
                            height: 2,
                            player: player,
                          )
                        : SizedBox(
                            width: double.infinity,
                            height: 0,
                          ),
                  )
                  // if (subtitle != null)
                  //   Text(
                  //     subtitle!,
                  //     style: ATextStyles.sys14Medium(AColors.greyDark),
                  //   ),
                ],
              ),
            ),
            SizedBox(width: 8),
            if (isApplied) ...[
              if (isSelected)
                // AudioPlayerButtonState(
                //   player: player,
                //   gaContext: PlayerGAContext.cs_bg_music,
                //   fillColor: AColors.orangePrimary,
                // )
                StreamBuilder(
                  stream: player.playingValueStream,
                  builder: (context, snapshot) {
                    return _EffectTileIconButton(
                      onPressed: () => snapshot.data == true
                          ? player.pause(null)
                          : player.play(),
                      fillColor: AColors.orangePrimary,
                      borderColor: AColors.orangePrimary,
                      icon: Icon(
                        snapshot.data == true
                            ? ArreIconsV2.pause_filled
                            : ArreIconsV2.play_filled,
                        size: 18,
                      ),
                    );
                  },
                )
              else
                _EffectTileIconButton(
                  onPressed: onTap,
                  icon: Icon(
                    ArreIconsV2.play_filled,
                    size: 18,
                  ),
                ),
              SizedBox(width: 10),
              _EffectTileIconButton(
                onPressed: onApplyOrRemovePressed,
                icon: Icon(
                  ArreIconsV2.cross_outline,
                  size: 18,
                ),
                borderColor: AColors.red,
              ),
            ] else
              FilledFlatButton(
                borderRadius: 8,
                onPressed: () {
                  onApplyOrRemovePressed();
                  Navigator.of(context).pop();
                },
                child: Text("Apply"),
              )
          ],
        ),
      ),
    );

    return tile;
  }
}

class _EffectTileIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final Color borderColor;
  final Color? fillColor;

  const _EffectTileIconButton({
    this.onPressed,
    required this.icon,
    this.fillColor,
    this.borderColor = AColors.BgStroke,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: borderColor),
        ),
        child: icon,
      ),
    );
  }
}
