part of voicepod;

Future<void> showDownloadDialog(
  WidgetRef ref, {
  required Post voicepod,
}) async {
  showDialog(
    context: ref.context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return DownloadDialog(
        ref: ref,
        voicepod: voicepod,
      );
    },
  );
}

class DownloadDialog extends StatefulWidget {
  const DownloadDialog({
    Key? key,
    required this.ref,
    required this.voicepod,
  }) : super(key: key);

  final Post voicepod;
  final WidgetRef ref;

  @override
  _DownloadDialogState createState() => _DownloadDialogState();
}

class _DownloadDialogState extends State<DownloadDialog> {
  double downloadProgress = 0.0;

  Future<void> startDownload() async {
    try {
      await ArreFiles.instance.downloadVoicepod2(
        voicepod: widget.voicepod,
        progressCallback: (progress) {
          setState(() {
            downloadProgress = progress;
          });
        },
      );
      // widget.completer.complete();
      // Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              "Download successfully completed. You can view it anytime from your account settings page"),
          action: SnackBarAction(
            label: 'Open File',
            onPressed: () {
              ArreNavigator.instance
                  .push(AAppPage(child: DownloadedPodsScreen()));
            },
          ),
        ),
      );
      if (mounted) Navigator.of(context).pop();
    } catch (_) {
      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Download failed. Please try again after some time"),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    startDownload();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AColors.BgLight,
      actionsPadding: EdgeInsets.only(bottom: 20, right: 20),
      title: Text('Downloading voicepod'),
      content: Row(
        children: <Widget>[
          Expanded(
            child: LinearProgressIndicator(value: downloadProgress),
          ),
          SizedBox(width: 5),
          Text(
            '${(downloadProgress * 100).floor()}%',
            style: ATextStyles.sys12Regular(),
          ),
        ],
      ),
      actions: <Widget>[
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Text(
            'Cancel',
            style: ATextStyles.sys14Bold(AColors.tealPrimary),
          ),
        ),
      ],
    );
  }
}
