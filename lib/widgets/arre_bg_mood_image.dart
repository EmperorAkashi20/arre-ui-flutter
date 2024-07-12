import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/material.dart';

class ArreBgMoodImage extends StatelessWidget {
  final String imageUrl;
  final List<double>? stops;

  const ArreBgMoodImage({super.key, required this.imageUrl, this.stops});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.4,
      alignment: Alignment.topCenter,
      child: DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AColors.BgDark.withOpacity(0),
              AColors.BgDark.withOpacity(1),
            ],
            stops: stops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Image.network(
          imageUrl,
          opacity: AlwaysStoppedAnimation(0.4),
          fit: BoxFit.cover,
          frameBuilder: (BuildContext context, Widget child, int? frame,
              bool wasSynchronouslyLoaded) {
            if (wasSynchronouslyLoaded) {
              return child;
            }
            return AnimatedOpacity(
              opacity: frame == null ? 0 : 1,
              duration: const Duration(seconds: 1),
              curve: Curves.easeOut,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
