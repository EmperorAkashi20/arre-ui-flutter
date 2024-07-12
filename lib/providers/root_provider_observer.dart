import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootProviderObserver extends ProviderObserver {
  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) {
    if (provider is AlwaysAliveProviderBase && container.depth == 0) {
      //When user logout, it's state is retained in the ProviderScope. To avoid such situations, this error is printed
      // log(
      //   "A non-disposing provider was initialised in global ProviderScope. Add the $value in _InternalRouter.ProviderScope",
      //   error: Exception("Add the $value in _InternalRouter.ProviderScope"),
      // );
    }
    super.didAddProvider(provider, value, container);
  }
}
