import 'dart:async';

import 'package:flutter/foundation.dart';

class LoadingValueNotifier extends ValueNotifier<bool> {
  final _delay = Duration(seconds: 1);
  Timer? _timer;

  LoadingValueNotifier(super.value);

  set value(bool isLoading) {
    if (isLoading) {
      _timer ??= Timer(_delay, () {
        super.value = isLoading;
      });
    } else {
      _timer?.cancel();
      _timer = null;
      super.value = isLoading;
    }
  }
}
