import 'dart:async';

import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_localizations.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _playerVolumeProvider = StateProvider((ref) => true);

class OnboardingScaffold extends ConsumerStatefulWidget {
  final Widget body;
  final double? progress;
  final bool canSkip;
  final SimpleAudioPlayerProvider2? player;
  final void Function(bool isMuted)? onMuteChanged;
  final Widget? steps;
  final Widget? floatingActionButton;

  const OnboardingScaffold({
    super.key,
    required this.body,
    required this.canSkip,
    this.progress,
    this.player,
    this.onMuteChanged,
    this.steps,
    this.floatingActionButton,
  });

  @override
  ConsumerState<OnboardingScaffold> createState() => _OnboardingScaffoldState();
}

class _OnboardingScaffoldState extends ConsumerState<OnboardingScaffold> {
  StreamSubscription<double>? volumeStreamSub;
  RemoveListener? removeListener;

  @override
  void initState() {
    super.initState();
    volumeStreamSub = widget.player?.volumeStream.listen((event) {
      setState(() {});
    });
    removeListener =
        ref.read(_playerVolumeProvider.notifier).addListener((state) {
      widget.player?.setVolume(state ? 1.0 : 0.0);
    });
  }

  @override
  void didUpdateWidget(covariant OnboardingScaffold oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.player != oldWidget.player) {
      volumeStreamSub?.cancel();
      volumeStreamSub = widget.player?.volumeStream.listen((event) {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    volumeStreamSub?.cancel();
    removeListener?.call();
    super.dispose();
  }

  bool get isMuted => widget.player?.volume == 0.0;

  @override
  Widget build(BuildContext context) {
    Widget body = Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xFF1c242c),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: widget.body,
    );

    if (widget.progress != null) {
      body = Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _OnboardingProgress(widget.progress!),
          Expanded(child: body),
        ],
      );
    }
    return Scaffold(
      backgroundColor: Color(0xFF161f26),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF161f26),
        elevation: 0,
        leading: (ModalRoute.of(context)?.impliesAppBarDismissal ?? false)
            ? ABackButton()
            : null,
        actions: [
          if (widget.canSkip)
            CupertinoButton(
              onPressed: () {
                arreAnalytics.logEvent(GAEvent.ONB_SKIP_CLICK);
                Navigator.of(context).popUntil((route) => false);
              },
              child: Text(
                context.tr.skip,
                style: TextStyle(
                  fontFamily: "Hind",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AColors.white,
                ),
              ),
            ),
          if (widget.player != null)
            IconButton(
              splashRadius: 16,
              onPressed: () async {
                await widget.player!.setVolume(isMuted ? 1.0 : 0.0);
                ref.read(_playerVolumeProvider.notifier).state = !isMuted;
                widget.onMuteChanged?.call(isMuted);
                arreAnalytics.logEvent(
                    isMuted ? GAEvent.ONB_MUTE_VO : GAEvent.ONB_UNMUTE_VO);
              },
              icon: Icon(
                isMuted ? ArreIconsV2.volume_off : ArreIconsV2.volume_up_filled,
              ),
            ),
          SizedBox(width: 8),
        ],
      ),
      floatingActionButton: widget.floatingActionButton,
      body: body,
    );
  }
}

class _OnboardingProgress extends StatelessWidget {
  final double progress;

  const _OnboardingProgress(this.progress);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 8 / 844;
    return Padding(
      padding: EdgeInsets.fromLTRB(24, height / 2, 24, height * 2),
      child: LinearProgressIndicator(
        minHeight: height,
        value: progress,
        color: AColors.tealPrimary,
        backgroundColor: AColors.tealDark,
        borderRadius: BorderRadius.circular(height),
      ),
    );
  }
}
