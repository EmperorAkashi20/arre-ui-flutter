import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';

class WebViewScreen extends StatefulWidget with ArreScreen {
  final String url;

  WebViewScreen({required this.url});

  @override
  _WebViewScreenState createState() => _WebViewScreenState();

  @override
  Uri? get uri => Uri.parse("/webview?url=${Uri.encodeComponent(url)}");

  @override
  String get screenName => GAScreen.WEBVIEW;

  static bool _canHandle(Uri uri) =>
      uri.path == "/webview" && uri.queryParameters.containsKey('url');

  static bool isHandled(Uri uri) {
    if (_canHandle(uri) && uri.queryParameters["external"] == "true") {
      String encodedUrl = uri.queryParameters['url']!;
      Utils.launchURL(encodedUrl, launchMode: LaunchMode.externalApplication);
      return true;
    }
    return false;
  }

  static ArrePage? maybeParse(Uri uri) {
    if (_canHandle(uri)) {
      String encodedUrl = uri.queryParameters['url']!;
      if (uri.queryParameters["external"] != "true") {
        return AAppPage(child: WebViewScreen(url: encodedUrl));
      }
    }
    return null;
  }
}

class _WebViewScreenState extends State<WebViewScreen> {
  String appBarTitle = '';
  bool isLoading = true;
  late WebViewController webViewController;
  dynamic error;
  Uri? uri;

  @override
  void initState() {
    webViewController = WebViewController();
    init();
    super.initState();
  }

  Future<void> init() async {
    try {
      var uri = Uri.parse(widget.url);
      if (uri.scheme.isEmpty) {
        uri = Uri.parse("https://${widget.url}");
      }
      this.uri = uri;
      await webViewController.setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() {
              isLoading = true;
            });
          },
          onPageFinished: (String url) {
            _updateAppBarTitle();
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              this.error = ArreException(
                "Could not open '${widget.url}'",
                code: AExceptionKey.WEBVIEW_FAILED,
                originalException: error,
              );
            });
          },
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      );
      await webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
      await webViewController.loadRequest(uri);
    } catch (err, st) {
      setState(() {
        error = err;
      });
      Utils.reportError(err, st);
    }
  }

  Future<void> _updateAppBarTitle() async {
    final title = await webViewController.getTitle();
    if (!mounted) return;
    setState(() {
      appBarTitle = title ?? 'ArreWebPage';
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(ArreIconsV2.kebeb_filled),
            onSelected: (value) {
              if (value == 'Open in browser') {
                Utils.launchURL(widget.url,
                    launchMode: LaunchMode.externalApplication);
              }
            },
            itemBuilder: (BuildContext context) {
              return ['Open in browser'].map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(controller: webViewController),
            if (error != null) ...[
              Container(color: AColors.BgDark),
              ArreErrorWidget(
                error: error,
                buttonText: "Open in browser",
                onPressed: () {
                  Utils.launchURL(
                    uri?.toString() ?? widget.url,
                    launchMode: LaunchMode.externalApplication,
                  );
                },
              )
            ] else if (isLoading) ...[
              Container(color: AColors.BgDark),
              Center(child: ACommonLoader())
            ],
          ],
        ),
      ),
    );
  }
}
