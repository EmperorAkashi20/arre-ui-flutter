// import 'package:arre_frontend_flutter/styles/styles.dart';
// import 'package:flutter/material.dart';
//
// class AButtonPrimary extends StatelessWidget {
//   final VoidCallback onPressed;
//   final Widget child;
//   final double height;
//   final EdgeInsets? padding;
//
//   const AButtonPrimary.wide({
//     super.key,
//     required this.onPressed,
//     required this.child,
//   })  : height = 34,
//         padding = null;
//
//   const AButtonPrimary.medium({
//     super.key,
//     required this.onPressed,
//     required this.child,
//   }) : height = 34,
//         padding = null;
//
//   const AButtonPrimary.small({
//     super.key,
//     required this.onPressed,
//     required this.child,
//   }) : constraints = const BoxConstraints(
//           maxWidth: 100,
//           maxHeight: 26,
//           minHeight: 26,
//         );
//
//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: constraints,
//       child: FilledButton(
//         onPressed: onPressed,
//         child: child,
//         style: ButtonStyle(
//           backgroundColor: MaterialStatePropertyAll(AColors.tealPrimary),
//         ),
//       ),
//     );
//   }
// }
