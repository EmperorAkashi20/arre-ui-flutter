import 'package:arre_frontend_flutter/utils/email_password_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PhoneNumber', () {
    test('Empty Phone Test', () {
      var result = EmailPasswordvalidator.isPhoneEmpty("");
      expect(result, true);
    });

    test('Invalid phone Test', () {
      var result = EmailPasswordvalidator.isValidPhone("733092462");
      expect(result, false);
    });

    test('Valid phone Test', () {
      var result = EmailPasswordvalidator.isValidPhone("7330924628");
      expect(result, true);
    });
  });
}
