part of edit_profile;

class _CreatorEditProfileScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() => _CreatorEditProfileScreenState();
}

class _CreatorEditProfileScreenState
    extends ConsumerState<_CreatorEditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final editProfilePvd = ref.watch(editProfileProvider);
    final sectionStyle = ATextStyles.sys14Bold(AColors.greyLight);
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("PROFILE PICTURE", style: sectionStyle),
          Center(child: _ProfilePictureWidget()),
          Center(
            child: CupertinoButton(
              child: Text(
                "Upload picture",
                style: ATextStyles.sys14PrimaryBold(AColors.tealPrimary),
              ),
              onPressed: !editProfilePvd.isSubmitting
                  ? () => editProfilePvd.pickMedia(onError: showErrorSnackBar)
                  : null,
            ),
          ),
          // Divider(height: 1),
          // SizedBox(height: 22),
          Text("PERSONAL DETAILS", style: sectionStyle),
          SizedBox(height: 16),
          _PersonalDetailsSection(
            showExternalLinkField: false,
            showUsernameField: false,
            showBioField: false,
          ),
          SizedBox(height: 22),
          Text("VOICE BIO", style: sectionStyle),
          SizedBox(height: 16),
          _VoiceBioSection(),
        ],
      ),
    );
  }
}
