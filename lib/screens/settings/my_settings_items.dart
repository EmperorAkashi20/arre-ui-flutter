part of my_account_settings;

class _SettingListTile extends ConsumerWidget {
  final String title;
  final String? subTitle;
  final Widget icon;
  final Color textColor;
  final Color backgroundColor;
  final double bgOpacity;
  final VoidCallback onPressed;
  final Widget? trailingButton;

  const _SettingListTile({
    required this.title,
    this.subTitle,
    required this.icon,
    this.textColor = Colors.white,
    this.backgroundColor = AColors.tealPrimary,
    this.bgOpacity = 0.4,
    required this.onPressed,
    this.trailingButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: EdgeInsets.only(left: 13, top: 12, bottom: 13, right: 16),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(9),
            color: AColors.BgLight), // Replace with your theme provider
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
              ),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(bgOpacity),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: icon),
              ),
            ),
            SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: ATextStyles.sys14PrimaryBold(textColor),
                ),
                SizedBox(height: subTitle == null ? 0 : 4),
                if (subTitle != null)
                  Text(
                    subTitle!,
                    style: ATextStyles.sys12Regular(Colors.white),
                  ),
              ],
            ),
            Spacer(),
            trailingButton ??
                Icon(
                  ArreIconsV2.frontarrow_outline,
                  size: 20,
                  color: textColor,
                ),
          ],
        ),
      ),
    );
  }
}

class _SettingTextButton extends ConsumerWidget {
  final VoidCallback onPressed;
  final String label;
  final Color textColor;

  const _SettingTextButton({
    required this.onPressed,
    required this.label,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(18, 8, 32, 8),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: ATextStyles.systemPrimaryNormal(textColor),
            ),
          ),
          Icon(
            ArreIconsV2.frontarrow_outline,
            size: 20,
            color: textColor,
          ),
        ],
      ),
    );
  }
}

class _ArreVersionCopy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.only(bottom: 24, top: 24),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                ArreAssets.ARRE_LOGO_DARK_VERSION_IMG,
                width: 108.49,
                height: 64.8,
              ),
            ),
            SizedBox(height: 12),
            FutureBuilder<PackageInfo>(
              future: PackageInfo.fromPlatform(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () => copyVersion(),
                        child: Text(
                          snapshot.data != null
                              ? 'Version ${snapshot.data?.version}'
                              : "",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            decorationColor: AColors.tealPrimary,
                            color: AColors.tealPrimary,
                          ),
                        ),
                      ),
                    );
                  default:
                    return const SizedBox();
                }
              },
            ),
          ],
        ));
  }

  Future<void> copyVersion() async {
    arreAnalytics.logEvent(GAEvent.VERSION_BUTTON_CLICKED);
    final deviceAppDetails = await DeviceAppManager.instance.deviceAppDetails;
    final userName = arrePref.userName;
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final appVersionNumber = packageInfo.version;
    final appBuildNumber = packageInfo.buildNumber;
    final fcmToken = await PushNotificationManager.instance.getFcmToken();
    final authToken = arrePref.getString(PrefKey.AUTH_TOKEN);
    print("fcmToken print $fcmToken ");

    //base64 encode data for important values
    final userIdBase64 = base64.encode(utf8.encode(arrePref.userId!));
    final fcmTokenBase64 = base64.encode(utf8.encode(fcmToken!));

    final jsonData = {
      'User ID': userIdBase64,
      'fcmToken': fcmToken,
    };
    final jsonString = jsonEncode(jsonData);
    final data = ClipboardData(text: jsonString);
    Clipboard.setData(data);
    Fluttertoast.showToast(
        msg: "Version Copied", toastLength: Toast.LENGTH_LONG);
  }
}
