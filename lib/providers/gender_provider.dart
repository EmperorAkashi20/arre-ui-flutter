import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final genderProvider = ChangeNotifierProvider((ref) => GenderProvider());

class GenderProvider extends ChangeNotifier {
  String? _value;
  Gender? _gender;
  NonBinaryGender? _nonBinaryGender;

  String? get value => _value;

  bool get hasValue => _value != null;

  Gender? get gender => _gender;

  NonBinaryGender? get nonBinaryGender => _nonBinaryGender;

  void setMainGender(Gender gender) {
    _gender = gender;
    _value = gender.value;
    notifyListeners();
  }

  void setNonBinaryGender(NonBinaryGender? nonBinaryGender) {
    _gender = nonBinaryGender == null ? null : Gender.other;
    _nonBinaryGender = nonBinaryGender;
    _value = nonBinaryGender?.label;
    notifyListeners();
  }
}

enum Gender {
  female(
    label: "Woman",
    value: "female",
    assetImage: ArreAssets.INVITE_FEMALE_ICON,
    alignment: Alignment(0, 0),
  ),
  male(
    label: "Man",
    value: "male",
    assetImage: ArreAssets.INVITE_MALE_ICON,
    alignment: Alignment(0.05, -0.05),
  ),
  other(
    label: "Non-binary",
    value: "other",
    assetImage: ArreAssets.INVITE_FEMALE_MALE_ICON,
    alignment: Alignment(0.10, -0.1),
  );

  const Gender({
    required this.label,
    required this.value,
    required this.assetImage,
    required this.alignment,
  });

  final String label;
  final String assetImage;
  final String value;
  final Alignment alignment;
}

enum NonBinaryGender {
  aGender("Agender"),
  biGender("Bigender"),
  genderFluid("Genderfluid"),
  genderQueer("Genderqueer"),
  genderNonConforming("Gender nonconforming"),
  genderQuestioning("Gender questioning"),
  genderVariant("Gender variant"),
  intersex("Intersex"),
  neutrois("Neutrois"),
  nonBinaryMan("Non binary Man"),
  nonBinaryWoman("Non binary woman"),
  panGender("Pangender"),
  polyGender("Polygender"),
  transgender("Transgender"),
  twoSpirit("Two-spirit");

  const NonBinaryGender(this.label);

  final String label;
}
