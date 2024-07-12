import 'dart:async';

import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class VolumeAdjustor extends StatefulWidget {
  final double initialVolume;
  final void Function(double volume) onChanged;
  final double height, width;

  const VolumeAdjustor({
    Key? key,
    required this.height,
    required this.width,
    this.initialVolume = 1.0,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<VolumeAdjustor> createState() => _VolumeAdjustorState();
}

class _VolumeAdjustorState extends State<VolumeAdjustor> {
  late StreamController<double> _volumeController;
  late Stream<double> _volumeStream;

  @override
  void initState() {
    super.initState();
    _volumeController = StreamController<double>.broadcast();
    _volumeStream = _volumeController.stream.distinct();
  }

  void updateVolume(Offset localPosition) {
    final volume = double.parse(
        (1 - (localPosition.dy / widget.height).clamp(0.0, 1.0))
            .toStringAsFixed(2));
    _volumeController.add(volume);
    widget.onChanged(volume);
  }

  @override
  void dispose() {
    _volumeController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        dragStartBehavior: DragStartBehavior.down,
        onTapDown: (tapDetails) {
          updateVolume(tapDetails.localPosition);
        },
        onVerticalDragStart: (dragStartDetails) {
          updateVolume(dragStartDetails.localPosition);
        },
        onVerticalDragUpdate: (dragUpdateDetails) {
          updateVolume(dragUpdateDetails.localPosition);
        },
        onVerticalDragDown: (dragDownDetails) {
          updateVolume(dragDownDetails.localPosition);
        },
        child: StreamBuilder<double>(
          stream: _volumeStream,
          initialData: widget.initialVolume,
          builder: (context, snapshot) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: snapshot.data! * widget.height,
                width: widget.width,
                child: Material(color: AColors.tealPrimary),
              ),
            );
          },
        ),
      ),
    );
  }
}
