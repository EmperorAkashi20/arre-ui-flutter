import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/material.dart';

class Language {
  final String assetName;
  final String displayName;
  final String firstLetter;
  final String value;
  final Color color;
  final String localeNamePrefix;

  const Language({
    required this.assetName,
    required this.displayName,
    required this.firstLetter,
    required this.value,
    required this.color,
    required this.localeNamePrefix,
  });
}

const LANGUAGES = [
  const Language(
    assetName: ArreAssets.LANG_TAMIL_IMG,
    displayName: "தமிழ்",
    firstLetter: "அ",
    value: "tamil",
    color: Color(0xFF603955),
    localeNamePrefix: "ta",
  ),
  const Language(
    assetName: ArreAssets.LANG_HINDI_IMG,
    displayName: "हिन्दी",
    firstLetter: "अ",
    value: "hindi",
    color: Color(0xFF4F3D35),
    localeNamePrefix: "hi",
  ),
  const Language(
    assetName: ArreAssets.LANG_ENGLISH_IMG,
    displayName: "English",
    firstLetter: "A",
    value: "english",
    color: Color(0xFF4BC7B6),
    localeNamePrefix: "en",
  ),
  const Language(
    assetName: ArreAssets.LANG_TELUGU_IMG,
    displayName: "తెలుగు",
    firstLetter: "ಅ",
    value: "telugu",
    color: Color(0xFF44504C),
    localeNamePrefix: "te",
  ),
  const Language(
      assetName: ArreAssets.LANG_KANNADA_IMG,
      displayName: "ಕನ್ನಡ",
      firstLetter: "ಅ",
      value: "kannada",
      color: Color(0xFF36585A),
      localeNamePrefix: "kn"),
  const Language(
    assetName: ArreAssets.LANG_MALAYALAM_IMG,
    displayName: "മലയാളം",
    firstLetter: "അ",
    value: "malayalam",
    color: Color(0xFF505F77),
    localeNamePrefix: "ml",
  ),
  const Language(
    assetName: ArreAssets.LANG_MARATHI_IMG,
    displayName: "मराठी",
    firstLetter: "अ",
    value: "marathi",
    color: Color(0xFF584044),
    localeNamePrefix: "mr",
  ),
  const Language(
    assetName: ArreAssets.LANG_BANGLA_IMG,
    displayName: "বাংলা",
    firstLetter: "অ",
    value: "bangla",
    color: Color(0xFF345168),
    localeNamePrefix: "bn",
  ),
];
