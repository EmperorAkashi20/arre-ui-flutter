import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayerSpeedButton extends ConsumerWidget {
  final AudioPlayerSpeed player;
  final VoidCallback onPressed;

  const PlayerSpeedButton({
    Key? key,
    required this.player,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledIconButton(
      size: 32,
      icon: ValueListenableBuilder<double>(
        valueListenable: player.speedValueNotifier,
        builder: (context, value, _) {
          var speed = value % 1 == 0
              ? value.toInt()
              : value.toStringAsFixed(1).toString();
          return Text(
            "${speed}x",
            style: TextStyle(
              fontFamily: "ubuntu",
              fontSize: 12,
              color: AColors.tealPrimary,
            ),
          );
        },
      ),
      fillColor: Color(0xFF232C36),
      padding: EdgeInsets.all(8),
      borderColor: Color(0xFF4BC7B6),
      onPressed: onPressed,
    );
  }
}
