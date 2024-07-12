part of communities;

class _CommunityRulesScreen extends StatefulWidget with ArreScreen {
  final String title, description;
  final List<String> rules;

  const _CommunityRulesScreen({
    required this.title,
    required this.description,
    required this.rules,
  });

  @override
  State<_CommunityRulesScreen> createState() => _CommunityRulesScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.VOICECLUB_RULES_SCREEN;
}

class _CommunityRulesScreenState extends State<_CommunityRulesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ABackButton(),
        title: Text("About Voiceclub"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Text(
              "About ${widget.title}",
              style: ATextStyles.sys16Bold(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: Text(
              widget.description,
              style: ATextStyles.user14Regular(AColors.textMedium),
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
    );
  }
}
