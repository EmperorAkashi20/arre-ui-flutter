import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deactivateAccountProvider = FutureProvider.autoDispose((ref) async {
  final response =
      await ApiService.instance.deactivateAccount(arrePref.userId!);
  ref.keepAlive();
  return response;
});

final deleteAccountProvider = FutureProvider.autoDispose((ref) async {
  final response = await ApiService.instance.deleteAccount(arrePref.userId!);
  ref.keepAlive();
  return response;
});
