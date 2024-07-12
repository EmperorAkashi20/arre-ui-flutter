import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MyadamRiveAnimation extends StatefulWidget {
  final MyadamController controller;

  const MyadamRiveAnimation({required this.controller});

  @override
  State<MyadamRiveAnimation> createState() => _MyadamRiveAnimationState();
}

class _MyadamRiveAnimationState extends State<MyadamRiveAnimation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 120,
      child: Transform.scale(
        scale: 2,
        child: RiveAnimation.asset(
          ArreAssets.ARRE_MYADAM_ANIM,
          controllers: [],
          onInit: (artboard) {
            final stateMachines = StateMachineController.fromArtboard(
                artboard, "State Machine 1");
            artboard.addController(stateMachines!);
            widget.controller.setController(stateMachines);
          },
        ),
      ),
    );
  }
}

class MyadamController {
  StateMachineController? _controller;
  SMIInput<bool>? okSMI, explainingSMI, sadSMI, thumbsUpSMI, isSpeakingSMI;

  List<void Function()> _pendingActions = [];

  void setController(StateMachineController controller) {
    _controller = controller;
    _pendingActions.forEach((element) {
      element();
    });
    _pendingActions.clear();
  }

  void addPendingActions(void Function() action) {
    if (_controller == null) {
      _pendingActions.add(action);
    }
  }

  void turnOffAllAnimations() {
    okSMI?.value = false;
    explainingSMI?.value = false;
    sadSMI?.value = false;
    thumbsUpSMI?.value = false;
  }

  void waveHands() {
    addPendingActions(() => waveHands());
    final ok = _controller?.findInput<bool>('Wave_Hand') as SMITrigger?;
    ok?.fire();
  }

  void superHandSign(bool value) {
    addPendingActions(() => superHandSign(value));
    if (value) turnOffAllAnimations();
    okSMI ??= _controller?.findInput<bool>("OK");
    okSMI?.value = value;
  }

  void explain(bool value) {
    addPendingActions(() => explain(value));
    if (value) turnOffAllAnimations();
    explainingSMI ??= _controller?.findInput<bool>("Explaining");
    explainingSMI?.value = value;
  }

  void sad(bool value) {
    addPendingActions(() => sad(value));
    if (value) turnOffAllAnimations();
    speak(false);
    sadSMI ??= _controller?.findInput<bool>("Sad");
    sadSMI?.value = value;
  }

  void thumbsUp(bool value) {
    addPendingActions(() => thumbsUp(value));
    if (value) turnOffAllAnimations();
    thumbsUpSMI ??= _controller?.findInput<bool>("Thumbs_Up");
    thumbsUpSMI?.value = value;
  }

  void speak(bool value) {
    addPendingActions(() => speak(value));
    if (value) turnOffAllAnimations();
    isSpeakingSMI ??= _controller?.findInput<bool>("Is_Speaking");
    isSpeakingSMI?.value = value;
  }
}
