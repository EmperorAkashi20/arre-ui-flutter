import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tuple/tuple.dart';
export 'package:permission_handler/permission_handler.dart' show Permission;

/// item1: indicates whether the permission is granted
///
/// item2: indicates whether the permission is granted within app context.
/// If user had to open the app settings to grant permission, this is set to false
///
/// [request]: whether to request for permission. Only sheet is shown in case of `false`
Future<Tuple2<bool, bool>> handlePermission(
  Permission permission, {
  bool request = true,
}) async {
  try {
    if (await permission.isGranted) return Tuple2(true, true);
    if (request && await permission.request().isGranted)
      return Tuple2(true, true);
    if (await permission.shouldShowRequestRationale) return Tuple2(false, true);

    final sheetInfo = permission.sheetInfo();
    await showModalBottomSheet(
      context: ArreNavigator.instance.context,
      useRootNavigator: true,
      builder: (_) => _PermissionSheet(permissionSheetInfo: sheetInfo),
    );
    return Tuple2(await permission.isGranted, false);
  } catch (err, st) {
    Utils.reportError(err, st);
    return Tuple2(false, false);
  }
}

class _PermissionSheet extends StatefulWidget {
  final _PermissionSheetInfo permissionSheetInfo;

  const _PermissionSheet({Key? key, required this.permissionSheetInfo})
      : super(key: key);

  @override
  State<_PermissionSheet> createState() => _PermissionSheetState();
}

class _PermissionSheetState extends State<_PermissionSheet>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed &&
        await widget.permissionSheetInfo.permission.isGranted) {
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.permissionSheetInfo.title,
              style: ATextStyles.sys20Bold(Color(0xFFE4F1EE)),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                widget.permissionSheetInfo.icon,
                SizedBox(width: 16),
                Expanded(child: Text(widget.permissionSheetInfo.description)),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 240),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 44,
                      width: 138,
                      child: FilledFlatButton(
                        onPressed: () async {
                          final isAppSettingsOpened = await openAppSettings();
                          if (!isAppSettingsOpened) {
                            Utils.reportError(
                              Exception(
                                  "Could not open app settings for permission ${widget.permissionSheetInfo.permission}"),
                              StackTrace.current,
                            );
                          }
                        },
                        child: Text(
                          "Open Settings",
                          style: ATextStyles.sys14Bold(),
                        ),
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text(
                        "Cancel",
                        style: ATextStyles.buttons(Color(0xFFDBF2EF)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

extension on Permission {
  _PermissionSheetInfo sheetInfo() {
    if (this == Permission.microphone) {
      return _PermissionSheetInfo(
        permission: this,
        title: "Requesting microphone permission",
        icon: Image.asset(
          ArreAssets.MIC_RECORD_IMG,
          height: 74,
          width: 86.21,
        ),
        description:
            "This lets you use your device microphone in order to record on the app.",
        // action: () {},
      );
    } else if (this == Permission.photos ||
        this == Permission.mediaLibrary ||
        this == Permission.videos ||
        this == Permission.manageExternalStorage ||
        this == Permission.photosAddOnly ||
        this == Permission.storage) {
      return _PermissionSheetInfo(
        permission: this,
        title: "Requesting storage permission",
        icon: Image.asset(
          ArreAssets.PHOTO_GALLERY_IMG,
          height: 74,
          width: 69,
        ),
        description:
            "This lets you share photos from your device while uploading an image.",
        // action: () {},
      );
    } else {
      throw UnimplementedError(
          "Permission sheet info not handled for ${this.value}");
    }
  }
}

class _PermissionSheetInfo {
  final Permission permission;
  final String title;
  final Widget icon;
  final String description;

  // final VoidCallback action;

  _PermissionSheetInfo({
    required this.permission,
    required this.title,
    required this.icon,
    required this.description,
    // required this.action,
  });
}
