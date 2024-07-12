import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//Run flutter pub get or flutter run and codegen takes place automatically.
//You should find generated files in ${FLUTTER_PROJECT}/.dart_tool/flutter_gen/gen_l10n.
//
// Alternatively, you can also run flutter gen-l10n to generate the same files without running the app.

//Command: flutter gen-l10n

extension ArreLocalizations on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;
}
