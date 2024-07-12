import 'dart:async';
import 'dart:io';
import 'package:arre_frontend_flutter/firebase_options.dart';
import 'package:arre_frontend_flutter/graphql/graphql_client.dart';
import 'package:arre_frontend_flutter/providers/arre_link_manager.dart';
import 'package:arre_frontend_flutter/providers/network_logs_provider.dart';
import 'package:arre_frontend_flutter/providers/push_notification_manager.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/app_constants.dart';

import 'package:arre_frontend_flutter/utils/styles.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as riverpod;

import 'package:package_info_plus/package_info_plus.dart';

import 'arre_routing/routing.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_core/firebase_core.dart';

import 'providers/audio_player/pod_player_v3.dart';
import 'providers/remote_config_manager.dart';
import 'providers/root_provider_observer.dart';
import 'utils/arre_preferences.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    print(
        "PlatformDispatcher.instance.defaultRouteName ${PlatformDispatcher.instance.defaultRouteName}");
    await arrePref.init();
    await initAudioServiceV3();
    ArreGraphQLClient.instance.init();
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is stack_trace.Trace) return stack.vmTrace;
      if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
      return stack;
    };
    if (AppConfig.isDevToolsEnabled) {
      //initializing notification since network logs provider is dependent on push notification
      await NetworkLogsProvider.instance.init();
      await PushNotificationManager.instance.init();
      PushNotificationManager.instance.showForegroundNotification(
        title: 'Network logs',
        body: 'debug the network requests from app',
        onclickRedirectTo: '/network_logs_screen',
      );
    } else {
      PushNotificationManager.instance.init();
    }
    ArreLinkManager.instance.initSingular();
    RemoteConfigManager.instance.init.catchError(
        (err, st) => Utils.reportError(err, st, reason: "Remote config init"));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .catchError((err, st) {
      Utils.reportError(err, st);
    });
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: AColors.BgDark));
    runApp(
      riverpod.ProviderScope(
        child: _ArreApp(),
        observers: [RootProviderObserver()],
      ),
    );

    PackageInfo.fromPlatform().then((packageInfo) {
      arreAnalytics.logEvent(GAEvent.LOG_APP_OPEN);
      arreAnalytics.logEvent(
        GAEvent.LOG_PLATFORM_DETAILS,
        parameters: {
          UserProperty.PLATFORM: Platform.operatingSystem,
          UserProperty.PLATFORM_VERSION: Platform.operatingSystemVersion,
          UserProperty.BUILD_NUMBER: packageInfo.buildNumber,
          UserProperty.VERSION_NUMBER: packageInfo.version
        },
      );
    });
  }, (err, st) {
    Utils.reportError(err, st);
  });
}

class _ArreApp extends StatefulWidget {
  @override
  _ArreAppState createState() => _ArreAppState();
}

// Register the RouteObserver as a navigation observer.
final RouteObserver<Route> rootRouteObserver = RouteObserver<Route>();

///Internal app router observer
final RouteObserver<PageRoute> appRouteObserver = RouteObserver<PageRoute>();

class _ArreAppState extends State<_ArreApp> with WidgetsBindingObserver {
  Locale? locale;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _setAppVisibilityStateAnalytics(AppLifecycleState.resumed);
  }

  void _setAppVisibilityStateAnalytics(AppLifecycleState state) {
    arreAnalytics.setAppState(state);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _setAppVisibilityStateAnalytics(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: CupertinoScrollBehavior(),
      routerConfig: RouterConfig<ArrePage>(
        routerDelegate: ArreNavigator.instance,
        backButtonDispatcher: ArreNavigator.instance.backButtonDispatcher,
        routeInformationParser: ArreRouteInfoParser.instance,
        routeInformationProvider:
            ArreNavigator.instance.routeInformationProvider,
      ),
      restorationScopeId: 'home',
      darkTheme: Styles.themeData(context),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: Styles.themeData(context).appBarTheme,
      ),
      locale: Platform.isAndroid ? locale : null,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        locale = deviceLocale;
        // here you make your app language similar to device language , but you should check whether the localization is supported by your app
        return;
      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
