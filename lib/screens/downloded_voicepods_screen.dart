import 'dart:io';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import '../arre_routing/routing.dart';
import '../providers/arre_files_provider.dart';
import '../styles/styles.dart';
import '../widgets/arre_back_button.dart';
import '../widgets/arre_error_widget.dart';
import '../widgets/arre_icons.dart';
import 'package:path/path.dart' as path;

class DownloadedPodsScreen extends ConsumerStatefulWidget with ArreScreen {
  @override
  Uri? get uri => Uri.parse('/downloaded_pods');

  @override
  String get screenName => GAScreen.DOWNLOADED_PODS_SCREEN;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/downloaded_pods") {
      return AAppPage(child: DownloadedPodsScreen());
    }
    return null;
  }

  @override
  ConsumerState<DownloadedPodsScreen> createState() =>
      _DownloadedPodsScreenState();
}

class _DownloadedPodsScreenState extends ConsumerState<DownloadedPodsScreen> {
  List<File> _downloadedVoicePods = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadDownloadedVoicePods();
  }

  Future<void> _loadDownloadedVoicePods() async {
    _isLoading = true;
    try {
      final Directory? directory = await ArreFiles.instance.getDownloadDir();
      _downloadedVoicePods = directory!.listSync().whereType<File>().toList();
      setState(() {});
    } catch (e) {
      showErrorMessageSnackBar('Error loading downloaded voicepods: $e');
    } finally {
      _isLoading = false;
    }
  }

  void deleteVoicePod(int index) async {
    try {
      await _downloadedVoicePods[index].delete();
      setState(() {
        _downloadedVoicePods.removeAt(index);
      });
    } catch (e) {
      showErrorMessageSnackBar('Error deleting voicepod: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (_downloadedVoicePods.isNotEmpty) {
      child = RefreshIndicator(
        onRefresh: () async {
          await Future.wait([_loadDownloadedVoicePods()]);
        },
        child: SafeArea(
          child: ListView.separated(
            physics: AlwaysScrollableScrollPhysics(),
            primary: false,
            padding: EdgeInsets.symmetric(vertical: 6),
            separatorBuilder: (_, __) => SizedBox(height: 6),
            itemCount: _downloadedVoicePods.length,
            itemBuilder: (context, i) {
              return _DownloadPodTile(
                deleteCallback: () => deleteVoicePod(i),
                voicePodFile: _downloadedVoicePods[i],
              );
            },
          ),
        ),
      );
    } else if (_isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget.empty(
            message: 'Downloaded voicepods will list here'),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text('Downloads'),
      ),
      body: child,
    );
  }
}

class _DownloadPodTile extends StatelessWidget {
  final void Function() deleteCallback;
  final File voicePodFile;

  const _DownloadPodTile({
    Key? key,
    required this.deleteCallback,
    required this.voicePodFile,
  }) : super(key: key);

  String getFormattedDate(File voicePodFile) {
    DateTime lastModified = voicePodFile.lastModifiedSync();
    String formattedDate = DateFormat('d MMM yyyy').format(lastModified);
    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    String fileName = path.basenameWithoutExtension(voicePodFile.path);
    String downloadedDate = getFormattedDate(voicePodFile);
    return Card(
      clipBehavior: Clip.hardEdge,
      color: AColors.BgDark,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: InkWell(
        onTap: () => ArreFiles.instance.openFile(voicePodFile.path),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox.square(
                        dimension: 50,
                        child: Container(
                          child: Icon(ArreIconsV2.music_outline, size: 28),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Color(0xFF336A69),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fileName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5),
                            Text(
                              downloadedDate,
                              style: ATextStyles.sys12Regular(AColors.textDark),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuButton<String>(
                        itemBuilder: (_) => [
                          //TO-DO: Implimenting View-voicepod
                          // _buildPopupMenuItem(
                          //   "View voicepod",
                          //   ArreIconsV2.voicepod_outline,
                          //   () => ArreNavigator.instance.push(AAppPage(
                          //       child:
                          //           ProfileScreen(userId: arrePref.userId!))),
                          // ),
                          _buildPopupMenuItem(
                            "Share",
                            ArreIconsV2.share_outline,
                            () async {
                              await Share.shareXFiles(
                                  [XFile(voicePodFile.path)]);
                            },
                          ),
                          _buildPopupMenuItem(
                            "Delete",
                            ArreIconsV2.bin_filled,
                            itemColor: AColors.red,
                            () async {
                              final isDeleted =
                                  await _showDeleteConfirmSheet(context);
                              if (isDeleted == true) {
                                deleteCallback();
                              }
                            },
                          ),
                        ].joinSeparator(PopupMenuItem(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: PopupMenuDivider(),
                            height: 0)),
                        icon: Icon(ArreIconsV2.kebeb_filled),
                        splashRadius: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: AColors.BgLight, width: 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildPopupMenuItem(
    String label,
    IconData icon,
    void Function() callback, {
    Color? itemColor,
  }) {
    return PopupMenuItem(
      height: 24,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Icon(icon, color: itemColor ?? AColors.tealPrimary, size: 24),
          SizedBox(width: 6),
          Text(label,
              style:
                  ATextStyles.sys12Regular(itemColor ?? AColors.tealPrimary)),
        ],
      ),
      value: label.toLowerCase(),
      onTap: callback,
    );
  }

  Future<bool?> _showDeleteConfirmSheet(BuildContext context) async {
    bool? isDeleted = await showModalBottomSheet<bool>(
      context: context,
      showDragHandle: true,
      useRootNavigator: true,
      routeSettings: RouteSettings(name: 'delete_downloaded_pod_sheet'),
      builder: (context) => ConfirmationSheet(
        title: "Delete File?",
        description:
            "Are you sure you want to delete the downloaded voicepod file?",
        primaryBtnLabel: "Delete voicepod file",
        primaryBtnColor: AColors.red,
        secondaryBtnLabel: "Cancel",
      ),
    );
    return isDeleted;
  }
}
