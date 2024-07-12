part of communities;

class CommunityJoinScreen extends StatefulWidget with ArreScreen {
  final String title;
  final List<String> rules;
  final Future<void> Function() acceptCallback;

  const CommunityJoinScreen({
    super.key,
    required this.title,
    required this.rules,
    required this.acceptCallback,
  });

  @override
  State<CommunityJoinScreen> createState() => _CommunityJoinScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.VOICECLUB_RULES_ACCEPT_SCREEN;

  @override
  bool get isOnboardingRequired => true;
}

class _CommunityJoinScreenState extends State<CommunityJoinScreen> {
  bool hasAcceptedTerms = false;
  bool isLoading = false;

  Future<void> acceptAndJoin() async {
    arreAnalytics.logEvent(
      GAEvent.VC_ACCEPT_AND_JOIN_BTN_CLICK,
      parameters: {
        EventAttribute.GA_CONTEXT:
            hasAcceptedTerms ? "pledge_taken" : "pledge_not_taken"
      },
    );
    if (!hasAcceptedTerms) {
      showInfoSnackBar(
          "Please accept the pledge to to join the ‘${widget.title}’ voiceclub");
      return;
    }
    try {
      setState(() {
        isLoading = true;
      });
      await widget.acceptCallback();
      if (mounted) Navigator.of(context).pop();
    } catch (err, st) {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
        showErrorSnackBar(err);
      }
      Utils.reportError(err, st);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text(widget.title),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 34,
            child: FilledFlatButton(
              onPressed: acceptAndJoin,
              child: isLoading
                  ? SizedBox.square(
                      dimension: 16,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(
                      "Accept and Join",
                      style: ATextStyles.sys14Bold(),
                    ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
              child: Text("Pledge", style: ATextStyles.sys16Bold()),
            ),
            CheckboxListTile(
              value: hasAcceptedTerms,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() {
                  hasAcceptedTerms = value == true;
                });
              },
              title: Text(
                "With every voicepod, I pledge kindness & respect, making it a safe space to Listen & Create, Dil Se…",
                style: ATextStyles.user14Bold(),
              ),
            ),
            Divider(indent: 20, endIndent: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
              child: Text(
                "Community rules",
                style: ATextStyles.sys16Bold(),
              ),
            ),
            for (int i = 0; i < widget.rules.length; i++)
              _RuleText(slNo: i + 1, text: widget.rules[i])
          ],
        ),
      ),
    );
  }
}

class _RuleText extends StatelessWidget {
  final int slNo;
  final String text;

  const _RuleText({
    required this.slNo,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            minRadius: 10,
            backgroundColor: AColors.greyDark,
            child: Text(
              "$slNo",
              style: ATextStyles.sys14Regular(AColors.BgDark),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: ATextStyles.sys14Regular(),
            ),
          )
        ],
      ),
    );
  }
}
