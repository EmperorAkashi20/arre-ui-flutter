import 'dart:async';
import 'dart:developer';

import 'package:arre_frontend_flutter/providers/push_notification_manager.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';
import 'package:arre_frontend_flutter/utils/arre_logger.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

mixin OnScroll<T> on ChangeNotifier {
  Completer<List<T>>? _completer;

  bool get isLoadingOnScroll => _completer?.isCompleted == false;

  bool get _isNotLoadingOnScroll => _completer?.isCompleted != false;

  Future<List<T>> loadNextItems();

  ///return
  ///[true] if you want to continue to listen to scroll events
  ///[false] if you've reached the end of list and there is no data. It'll detach the scroll-listener
  Future<List<T>> onScroll() async {
    if (_completer?.isCompleted == false) return _completer!.future;
    _completer = Completer();
    notifyListeners();
    log('OnScroll Load data ${DateTime.now()}', name: 'DATA FETCHER');
    loadNextItems().then((value) {
      _completer?.complete(value);
    }).catchError((err, st) {
      _completer?.completeError(err, st);
    }).whenComplete(() => notifyListeners());
    return _completer!.future;
  }
}
//
// ///Call [attachLoadOnScroll] in the  provider's init/constructor
// ///
// ///handles only [ScrollDirection.reverse], [onScroll] is called when the end of scroll is [_loadingOffset] pixels away
// ///return [Future] in [onScroll] as onScroll will only be triggered after completion of [onScroll]
// ///
// /// Note: Dispose the controller in your provider dispose method
// mixin LoadOnScroll<T> on OnScroll<T> {
//   ///lock system to prevent multiple trigger of [onScroll]
//
//   ScrollController _controller = ScrollController();
//   bool _canDisposeController = true;
//
//   ///Bind this controller to the scrollable widget, eg [ListView]
//   ScrollController get controller => _controller;
//
//   ///The pixels after which the data should be loaded.
//   ///
//   /// For example, if [loadingOffset] is 300 and  a [ListView] with max scroll extent 1200,
//   /// When user scrolls after 900, [onScroll] is triggered.
//   int loadingOffset = 300;
//
//   void attachLoadOnScroll({ScrollController? scrollController}) {
//     if (scrollController != null) {
//       _controller = scrollController;
//       // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       //   _controller.notifyListeners();
//       // });
//       _canDisposeController = false;
//     }
//     _controller.removeListener(_onScroll);
//     _controller.addListener(_onScroll);
//   }
//
//   ///When all the data is loaded, remove the scroll listener
//   void detachLoadOnScroll() {
//     _controller.removeListener(_onScroll);
//   }
//
//   void _onScroll() {
//     if (_isNotLoadingOnScroll &&
//         _controller.position.userScrollDirection == ScrollDirection.reverse &&
//         _controller.offset >
//             _controller.position.maxScrollExtent - loadingOffset) {
//       onScroll().then((items) {
//         if (items.isEmpty) {
//           detachLoadOnScroll();
//         }
//       }).catchError((err, st) {
//         Utils.reportError(err, st);
//       });
//     }
//   }
//
//   @override
//   void dispose() {
//     if (_canDisposeController) _controller.dispose();
//     super.dispose();
//   }
//
//   void scrollToTop() {
//     controller.animateTo(
//       0,
//       duration: Duration(milliseconds: 340),
//       curve: Curves.easeOut,
//     );
//   }
// }

mixin LoadOnScrollNotification<T extends Notification, S> on OnScroll<S> {
  ///if true, the [onScroll] is invoked on reaching the end of scroll
  bool _isAttached = true;

  bool get isLoading;

  void resetLoadOnScroll() {
    _isAttached = true;
  }

  ///The pixels after which the data should be loaded.
  ///
  /// For example, if [loadingOffset] is 300 and  a [ListView] with max scroll extent 1200,
  /// When user scrolls after 900, [onScroll] is triggered.
  int loadingOffset = 400;

  bool onScrollNotification(ScrollUpdateNotification notification) {
    if (!_isAttached || isLoading) return false;

    final canLoad = _isNotLoadingOnScroll &&
        notification.metrics.pixels >
            (notification.metrics.maxScrollExtent - loadingOffset);
    if (canLoad) {
      if (AppConfig.isDevToolsEnabled) {
        final hasCustomScrollView = notification.context
                ?.findAncestorWidgetOfExactType<CustomScrollView>() !=
            null;

        if (!hasCustomScrollView) {
          PushNotificationManager.instance.showDebugNotification(
            title: "ERROR: CustomScrollView is in the Widget tree",
            body: "${this.runtimeType}",
          );
        }
      }

      onScroll().then((value) {
        if (value.isEmpty) {
          _isAttached = false;
        }
      }).catchError((err, st) {
        Utils.reportError(err, st);
      });
    }
    return false;
  }
}

mixin LoadOnScrollNotificationV2<T extends Notification, S> on OnScroll<S> {
  ///if true, the [onScroll] is invoked on reaching the end of scroll
  bool _isAttached = true;

  bool get isLoading;

  void resetLoadOnScroll() {
    _isAttached = true;
  }

  ///The pixels after which the data should be loaded.
  ///
  /// For example, if [loadingOffset] is 300 and  a [ListView] with max scroll extent 1200,
  /// When user scrolls after 900, [onScroll] is triggered.
  int loadingOffset = 400;

  bool onScrollNotification(ScrollMetricsNotification notification) {
    if (!_isAttached || isLoading) return false;

    final canLoad = _isNotLoadingOnScroll &&
        notification.metrics.pixels >
            (notification.metrics.maxScrollExtent - loadingOffset);
    if (canLoad) {
      if (AppConfig.isDevToolsEnabled) {
        final hasCustomScrollView = notification.context
                .findAncestorWidgetOfExactType<CustomScrollView>() !=
            null;

        if (hasCustomScrollView) {
          PushNotificationManager.instance.showDebugNotification(
            title:
                "ERROR: Cannot use LoadOnScrollNotificationV2 with CustomScrollView",
            body: "${this.runtimeType}",
          );
        }
      }

      ALogger.d(
          "Scroll metrics ${notification.metrics} ${notification.context.mounted} "
          "${Navigator.maybeOf(notification.context)?.userGestureInProgress}");
      onScroll().then((value) {
        if (value.isEmpty) {
          _isAttached = false;
        }
      }).catchError((err, st) {
        Utils.reportError(err, st);
      });
    }
    return false;
  }
}

/// A [ChangeNotifier] that holds a single value.
///
/// When [value] is replaced with something that is not equal to the old
/// value as evaluated by the equality operator ==, this class notifies its
/// listeners.
class SetValueNotifier<T> extends ChangeNotifier
    implements ValueListenable<Set<T>> {
  /// Creates a [ChangeNotifier] that wraps this value.
  SetValueNotifier(this._value);

  /// The current value stored in this notifier.
  ///
  /// When the value is replaced with something that is not equal to the old
  /// value as evaluated by the equality operator ==, this class notifies its
  /// listeners.
  @override
  Set<T> get value => _value;
  Set<T> _value;

  set value(Set<T> newValue) {
    if (setEquals(newValue, this.value)) {
      return;
    }
    _value = newValue;
    notifyListeners();
  }

  @override
  String toString() => 'SetValueNotifier($value)';
}
