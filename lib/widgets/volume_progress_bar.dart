import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';

import '../styles/styles.dart';

const _trackHeight = 6.0;
const _thumbRadius = 10.0;

class VolumeProgressBar extends StatelessWidget {
  final AudioVolumeManage player;

  const VolumeProgressBar({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: _trackHeight,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: _thumbRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            ArreIconsV2.volume_down_filled,
            color: AColors.greyLight,
          ),
          Expanded(
            child: StreamBuilder<double>(
              stream: player.volumeStream,
              initialData: player.volume,
              builder: (context, snapshot) {
                return Slider(
                  value: snapshot.data!,
                  activeColor: AColors.tealStroke,
                  divisions: 20,
                  thumbColor: AColors.tealPrimary,
                  inactiveColor: AColors.greyLight,
                  min: 0.1,
                  onChanged: player.setVolume,
                );
              },
            ),
          ),
          Icon(
            ArreIconsV2.volume_up_filled,
            color: AColors.greyLight,
          ),
        ],
      ),
    );
  }
}
