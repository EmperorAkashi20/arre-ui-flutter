library my_account_settings;

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/screens/analytics/analytics_screen.dart';
import 'package:arre_frontend_flutter/screens/blocked_users_screen.dart';
import 'package:arre_frontend_flutter/screens/downloded_voicepods_screen.dart';
import 'package:arre_frontend_flutter/screens/my_topics_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/Firebase Analytics/firebase_analytics_service.dart';
import '../../utils/app_constants.dart';
import '../../utils/utils.dart';
import '../../widgets/arre_icons.dart';
import '../language_selection_sheet.dart';
import '../network_logs_screen.dart';
import '../terms_and_condition/privacy_policies.dart';
import '../terms_and_condition/terms_and_condition.dart';
import '../web_view_screen.dart';
import 'dart:convert';
import 'package:arre_frontend_flutter/providers/device_app_manager.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../providers/push_notification_manager.dart';
import '../../utils/arre_assets.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import '../../providers/settings_screen_providers.dart';
import '../../utils/snackbars.dart';
import '../new_myspace/unordered_list.dart';

part 'my_settings_items.dart';

part 'my_account_action_sheet.dart';

class AccountSettings extends ConsumerStatefulWidget with ArreScreen {
  @override
  _AccountSettingsState createState() => _AccountSettingsState();

  @override
  Uri get uri => Uri.parse("/account_settings");

  @override
  String get screenName => GAScreen.ACCOUNT_SETTINGS;

  static maybeParse(Uri uri) {
    if (uri.path == "/account_settings") {
      return AAppPage(child: AccountSettings());
    }
    return null;
  }
}

class _AccountSettingsState extends ConsumerState<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  FutureBuilder(
                    future: ref.read(appUpdateFutureProvider.future),
                    builder: (_, snapshot) {
                      final update = snapshot.data;
                      if (update?.status == AppUpdateStatus.updateAvailable) {
                        return _SettingListTile(
                          onPressed: DeviceAppManager.instance.updateApp,
                          icon: Icon(ArreIconsV2.import_outline, size: 16),
                          backgroundColor: AColors.orangePrimary,
                          bgOpacity: 1,
                          title: "App Update Available",
                          trailingButton: FilledButton(
                            onPressed: DeviceAppManager.instance.updateApp,
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStatePropertyAll(Size(58, 26)),
                              backgroundColor: MaterialStatePropertyAll(
                                  AColors.orangePrimary),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 12),
                              ),
                            ),
                            child: Text("Update"),
                          ),
                        );
                      }
                      return SizedBox();
                    },
                  ),
                  if (AppConfig.isDevToolsEnabled)
                    _SettingListTile(
                      onPressed: () {
                        ArreNavigator.instance
                            .push(AAppPage(child: NetworkLogsScreen()));
                      },
                      icon: Icon(ArreIconsV2.eye_outline),
                      title: "Network logs",
                    ),
                  _SettingListTile(
                    title: "Analytics",
                    icon: Icon(
                      ArreIconsV2.graph_outline,
                      size: 16,
                      color: Colors.white,
                    ),
                    onPressed: () => ArreNavigator.instance
                        .push(AAppPage(child: AnalyticsScreen())),
                  ),
                  _SettingListTile(
                    title: "Downloads",
                    icon: Icon(
                      ArreIconsV2.import_outline,
                      size: 16,
                      color: Colors.white,
                    ),
                    onPressed: () => ArreNavigator.instance
                        .push(AAppPage(child: DownloadedPodsScreen())),
                  ),
                  _SettingListTile(
                    title: "Autoplay",
                    subTitle: "Voicepods and playlists will auto play",
                    icon: Icon(
                      ArreIconsV2.voice_filled,
                      size: 16,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    trailingButton: FlutterSwitch(
                      width: 40,
                      height: 22,
                      toggleSize: 18,
                      padding: 2.0,
                      value: arrePref.getBool(PrefKey.IS_AUTO_PLAY_ON) ?? true,
                      activeColor: AColors.tealPrimary,
                      activeIcon: Icon(
                        ArreIconsV2.play_filled,
                        color: AColors.tealPrimary,
                      ),
                      inactiveIcon: Icon(
                        ArreIconsV2.pause_filled,
                        color: AColors.greyMedium,
                      ),
                      onToggle: (isOn) async {
                        await arrePref.setBool(PrefKey.IS_AUTO_PLAY_ON, isOn);
                        setState(() {});
                        arreAnalytics.setUserProperty(
                          UserProperty.AUTO_PLAY_STATUS,
                          isOn ? "ON" : "OFF",
                        );
                      },
                    ),
                  ),
                  _SettingListTile(
                    title: "My Topics",
                    icon: Icon(
                      ArreIconsV2.graph_outline,
                      size: 16,
                      color: Colors.white,
                    ),
                    onPressed: () => ArreNavigator.instance
                        .push(AAppPage(child: MyTopicsScreen())),
                  ),
                  _SettingListTile(
                    title: "Edit My Languages",
                    icon: Icon(
                      ArreIconsV2.language_outline,
                      size: 15,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showLanguageSelectionSheet();
                    },
                  ),
                  _SettingListTile(
                      title: "Blocked members",
                      icon: Icon(
                        ArreIconsV2.user_caution_outline,
                        size: 15,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        ArreNavigator.instance.push(
                          AAppPage(child: BlockedUsersScreen()),
                        );
                      }),
                  _SettingListTile(
                    title: "Community Code Of Conduct",
                    icon: Icon(
                      ArreIconsV2.shield_filled,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () => ArreNavigator.instance.push(AAppPage(
                        child: WebViewScreen(
                      url: "https://www.arrevoice.com/community-guidelines",
                    ))),
                  ),
                  _SettingListTile(
                    title: "Help Centre",
                    icon: Icon(
                      ArreIconsV2.question_outline,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      arreAnalytics
                          .logEvent(GAEvent.HELP_CENTER_BUTTON_CLICKED);
                      Utils.launchURL(
                          "https://share.hsforms.com/1l1yyZMR5R_qUy_ud6mtvXgnr7e1",
                          launchMode: LaunchMode.externalApplication);
                    },
                  ),
                  _SettingTextButton(
                    onPressed: () {
                      ArreNavigator.instance
                          .push(AAppPage(child: TermsAndCondition()));
                    },
                    label: "Terms of Service",
                  ),
                  _SettingTextButton(
                    onPressed: () {
                      ArreNavigator.instance
                          .push(AAppPage(child: PrivacyPolicies()));
                    },
                    label: "Privacy Policies",
                  ),
                  _SettingTextButton(
                    onPressed: () {
                      arreAnalytics
                          .logEvent(GAEvent.DEACTIVATE_OPTION_BUTTON_CLICK);
                      showAccountDeactivateSheet(ref);
                    },
                    label: "Temporarily Deactivate My Account",
                  ),
                  _SettingTextButton(
                    onPressed: () {
                      arreAnalytics
                          .logEvent(GAEvent.DELETE_ACCOUNT_OPTION_CLICKED);
                      showAccountDeleteSheet(ref);
                    },
                    label: "Permanently Delete My Account",
                    textColor: AColors.red,
                  ),
                  _SettingListTile(
                    title: "Logout",
                    textColor: AColors.red,
                    backgroundColor: AColors.red,
                    bgOpacity: 1.0,
                    icon: Icon(
                      ArreIconsV2.logout_outline,
                      size: 15,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      arreAnalytics.logEvent(GAEvent.LOGOUT_BUTTON_CLICKED);
                      Utils.logout();
                    },
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: _ArreVersionCopy(),
              ),
              hasScrollBody: false,
              fillOverscroll: false,
            )
          ],
        ),
      ),
    );
  }
}
