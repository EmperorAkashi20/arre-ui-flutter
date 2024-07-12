library edit_profile;

import 'dart:io';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/providers/edit_profile_provider.dart';
import 'package:arre_frontend_flutter/providers/login_provider.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/providers/username_provider.dart';
import 'package:arre_frontend_flutter/providers/voice_bio_provider.dart';
import 'package:arre_frontend_flutter/screens/permission_sheet.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/confirmation_sheet.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_frontend_flutter/widgets/player_widgets/player_progress_bar.dart';
import 'package:arre_frontend_flutter/widgets/text_field_label.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'edit_profile_u1.dart';

part 'pop_confirm_sheet.dart';

part 'creator_edit_profile_screen.dart';

class EditProfileScreen extends ConsumerWidget with ArreScreen {
  final GUserDetails? userDetails;
  final bool showMinimumFields;
  final bool scrollToEnd;

  const EditProfileScreen({
    super.key,
    required this.userDetails,
    this.scrollToEnd = false,
  }) : showMinimumFields = false;

  const EditProfileScreen.mini({
    super.key,
    required this.userDetails,
    this.scrollToEnd = false,
  }) : showMinimumFields = true;

  @override
  Uri? get uri {
    String location = "/my_profile/edit";
    if (showMinimumFields) {
      location += "?mode=creator";
    }
    return Uri.parse(location);
  }

  @override
  String get screenName => GAScreen.EDIT_PROFILE;

  @override
  bool get isOnboardingRequired => true;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/my_profile/edit") {
      if (uri.queryParameters["mode"] == "creator") {
        return AGlobalPage(child: EditProfileScreen.mini(userDetails: null));
      } else {
        return AGlobalPage(child: EditProfileScreen(userDetails: null));
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(currentUserProvider).userId!;
    final profilePvd = ref.watch(userProfileProvider(userId));

    if (userDetails != null || profilePvd.hasData) {
      //This has Scaffold within
      return ProviderScope(
        overrides: [editProfileProvider, voiceBioProvider, usernameProvider],
        child: _EditProfile(
          userDetails: (userDetails ?? profilePvd.data)!,
          showMinimumFields: showMinimumFields,
          scrollToEnd: scrollToEnd,
        ),
      );
    }

    Widget child;
    if (profilePvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(
          error: profilePvd.error,
          onPressed: () {
            ref.read(userShortDataProvider).fetchData(arrePref.userId!);
            profilePvd.refresh();
          },
        ),
      );
    }

    return Scaffold(appBar: AppBar(leading: ABackButton()), body: child);
  }
}

class _EditProfile extends ConsumerStatefulWidget {
  final GUserDetails userDetails;
  final bool showMinimumFields;
  final bool scrollToEnd;

  const _EditProfile({
    required this.userDetails,
    required this.showMinimumFields,
    required this.scrollToEnd,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _EditProfileState();
}

class _EditProfileState extends ConsumerState<_EditProfile> {
  ProviderSubscription? _sectionSub;

  @override
  void initState() {
    super.initState();
    final editProfilePvd = ref.read(editProfileProvider);
    editProfilePvd.initDraft(widget.userDetails);
    ref.read(usernameProvider).usernameTextEditCtrl.text =
        widget.userDetails.username;
    editProfilePvd.voiceBioSaveCallback =
        ref.read(voiceBioProvider).voiceBioSaveCallback;
    ref.read(voiceBioProvider).initialMediaId =
        widget.userDetails.profile?.audioBioMediaId;
    ref.read(voiceBioProvider).initDuration();
  }

  @override
  void dispose() {
    _sectionSub?.close();
    super.dispose();
  }

  ThemeData buildThemeData() {
    return Theme.of(context).copyWith(
      inputDecorationTheme: InputDecorationTheme(
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFDBF2EF).withOpacity(0.1)),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AColors.BgStroke),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AColors.BgStroke),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AColors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AColors.red),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFDBF2EF).withOpacity(0.6)),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 12),
        hintStyle: ATextStyles.user16Regular(AColors.textDark),
        labelStyle: ATextStyles.user16Regular(AColors.textDark),
        counterStyle: ATextStyles.sys12Mini(AColors.textDark),
        errorStyle: TextStyle(color: AColors.red),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(AColors.textMedium),
          textStyle: MaterialStatePropertyAll(
              ATextStyles.sys18Regular(AColors.textMedium)),
          side: MaterialStatePropertyAll(
            BorderSide(color: AColors.GreyMedium),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      textTheme: Theme.of(context)
          .textTheme
          .copyWith(titleMedium: ATextStyles.user16Regular()),
    );
  }

  Future<void> onSubmit() async {
    final editProfilePvd = ref.read(editProfileProvider);
    try {
      final msg =
          await editProfilePvd.submit(validate: widget.showMinimumFields);
      print("I AM MOUNTED? ${context.mounted}");
      _updateProvidersAndPop(ref, msg);
    } catch (err) {
      showErrorSnackBar(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    final editProfilePvd = ref.watch(editProfileProvider);
    Widget child = GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Theme(
        data: buildThemeData(),
        child: Scaffold(
          appBar: AppBar(
            title: widget.showMinimumFields
                ? Text("COMPLETE PROFILE")
                : Text("EDIT PROFILE"),
            leading: ABackButton(),
          ),
          bottomNavigationBar: _BottomActionButton(
            showMinimumFields: widget.showMinimumFields,
            onSubmit: onSubmit,
          ),
          body: Form(
            key: editProfilePvd.formKey,
            onWillPop: () => _onWillPopEditProfile(ref),
            onChanged:
                widget.showMinimumFields ? editProfilePvd.onFormChanged : null,
            autovalidateMode: editProfilePvd.autovalidateMode,
            child: widget.showMinimumFields
                ? _CreatorEditProfileScreen()
                : _EditProfileBody(scrollToEnd: widget.scrollToEnd),
          ),
        ),
      ),
    );

    if (editProfilePvd.isSubmitting) {
      return Stack(
        fit: StackFit.expand,
        children: [
          child,
          Container(
            color: Colors.black54,
            alignment: Alignment.center,
            child: CircularProgressIndicator(color: AColors.tealPrimary),
          )
        ],
      );
    }

    return child;
  }
}

class _BottomActionButton extends ConsumerWidget {
  final bool showMinimumFields;
  final VoidCallback onSubmit;

  const _BottomActionButton({
    required this.showMinimumFields,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editProfilePvd = ref.watch(editProfileProvider);

    bool enableButton = true;

    if (showMinimumFields && editProfilePvd.hasFilledRequiredFields() != null) {
      enableButton = false;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black, Theme.of(context).scaffoldBackgroundColor],
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          height: 34,
          child: FilledButton(
            onPressed: enableButton ? onSubmit : null,
            child: Text(
              showMinimumFields ? "Finish" : "Update Changes",
              style: ATextStyles.sys14Bold(),
            ),
          ),
        ),
      ),
    );
  }
}

class _EditProfileBody extends ConsumerStatefulWidget {
  final bool scrollToEnd;

  const _EditProfileBody({
    Key? key,
    required this.scrollToEnd,
  }) : super(key: key);

  @override
  ConsumerState createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends ConsumerState<_EditProfileBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (widget.scrollToEnd) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final editProfilePvd = ref.watch(editProfileProvider);
    final sectionStyle = ATextStyles.sys14Bold(AColors.greyLight);
    return SingleChildScrollView(
      controller: _scrollController,
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
          Divider(height: 1),
          SizedBox(height: 22),
          Text("PERSONAL DETAILS", style: sectionStyle),
          SizedBox(height: 16),
          _PersonalDetailsSection(),
          SizedBox(height: 16),
          Divider(height: 1),
          SizedBox(height: 22),
          Text("VOICE BIO", style: sectionStyle),
          SizedBox(height: 16),
          _VoiceBioSection(),
          SizedBox(height: 16),
          Divider(height: 1),
          SizedBox(height: 22),
          Text("SOCIAL ACCOUNTS", style: sectionStyle),
          SizedBox(height: 16),
          _SocialAccountsWidget(padding: EdgeInsets.zero),
        ],
      ),
    );
  }
}

class _ProfilePictureWidget extends ConsumerWidget {
  final double size = 111;

  const _ProfilePictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editProfilePvd = ref.watch(editProfileProvider);
    Widget child;
    if (editProfilePvd.draft.imageFilePath != null) {
      child = SizedBox.square(
        dimension: size,
        child: ClipOval(
          child: Image.file(
            File(editProfilePvd.draft.imageFilePath!),
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      child = UserAvatarV2(
        mediaId: editProfilePvd.draft.profilePictureMediaId,
        userName: editProfilePvd.draft.userName,
        size: size,
        showThumbnail: false,
      );
    }
    return SizedBox(
      height: size + 8,
      width: size + 8,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: child,
          ),
          if (editProfilePvd.draft.imageFilePath != null ||
              editProfilePvd.draft.profilePictureMediaId != null)
            Align(
              alignment: Alignment(0.9, -0.9),
              child: FilledIconButton(
                icon: Icon(
                  Icons.close,
                  color: AColors.tealPrimary,
                  size: 18,
                ),
                size: 28,
                padding: EdgeInsets.all(4),
                onPressed: !editProfilePvd.isSubmitting
                    ? editProfilePvd.clearImage
                    : null,
                borderColor: AColors.tealPrimary,
                fillColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
        ],
      ),
    );
  }
}

class _SocialAccountsWidget extends ConsumerWidget {
  final EdgeInsets padding;

  const _SocialAccountsWidget({
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editProfilePvd = ref.watch(editProfileProvider);
    final draft = editProfilePvd.draft;
    final fieldPadding =
        EdgeInsets.only(left: padding.left, right: padding.right);

    return Column(
      children: [
        _SocialAccountFieldTile(
          padding: fieldPadding,
          icon: Icon(ArreIconsV2.instagram_outline, color: Colors.white),
          textField: TextFormField(
            initialValue: editProfilePvd.draft.instagramHandle,
            autocorrect: false,
            enabled: !editProfilePvd.isSubmitting,
            onSaved: (value) => draft.instagramHandle = value,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            validator: (String? value) {
              if (Utils.isValidInstaUsername(value) || !value.isValid)
                return null;
              return "Invalid username";
            },
            inputFormatters: [InstagramHandleInputFormatter()],
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Add only your username, eg: imira",
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        SizedBox(height: 12),
        _SocialAccountFieldTile(
          padding: fieldPadding,
          icon: Icon(
            ArreIconsV2.twitter_outline,
            color: Colors.white,
          ),
          textField: TextFormField(
            initialValue: editProfilePvd.draft.twitterHandle,
            autocorrect: false,
            enabled: !editProfilePvd.isSubmitting,
            textInputAction: TextInputAction.next,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            onSaved: (value) => draft.twitterHandle = value,
            validator: (String? value) {
              if (Utils.isValidTwitterUsername(value) || !value.isValid)
                return null;
              return "Invalid username";
            },
            inputFormatters: [TwitterHandleInputFormatter()],
            decoration: InputDecoration(
              hintText: "Add only your username, eg: imira",
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        SizedBox(height: 12),
        _SocialAccountFieldTile(
          padding: fieldPadding,
          icon: Icon(
            ArreIconsV2.linkedin_filled,
            color: Colors.white,
          ),
          textField: TextFormField(
            initialValue: editProfilePvd.draft.linkedInHandle,
            autocorrect: false,
            enabled: !editProfilePvd.isSubmitting,
            textInputAction: TextInputAction.next,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            onSaved: (value) => draft.linkedInHandle = value,
            validator: (String? value) {
              if (Utils.isValidLinkedInUsername(value) || !value.isValid)
                return null;
              return "Invalid username";
            },
            inputFormatters: [LinkedInHandleInputFormatter()],
            decoration: InputDecoration(
              hintText: "Add only your username, eg: imira",
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        // Row(
        //   children: [
        //     SizedBox(width: (padding.left - 12).clamp(0, double.infinity)),
        //     Checkbox(
        //       value: draft.displaySocialHandles,
        //       onChanged: editProfilePvd.changeSocialVisibility,
        //       checkColor: AColors.tealPrimary,
        //       side: BorderSide(color: Color(0xFF3d3d3d), width: 1),
        //       fillColor: MaterialStatePropertyAll(Color(0xFF545558)),
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(2)),
        //     ),
        //     Text(
        //       "Display on my profile",
        //       style: ATextStyles.sys14Bold(AColors.textMedium),
        //     )
        //   ],
        // ),
      ],
    );
  }
}

class _SocialAccountFieldTile extends StatelessWidget {
  final Widget icon, textField;
  final EdgeInsets padding;

  const _SocialAccountFieldTile({
    required this.icon,
    required this.textField,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7, right: 12),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: AColors.tealPrimary,
              child: icon,
            ),
          ),
          Expanded(child: textField),
        ],
      ),
    );
  }
}

void _updateProvidersAndPop(WidgetRef ref, String? message) {
  if (message != null) {
    showInfoSnackBar(message);
  }
  ref.invalidate(userProfileProvider(arrePref.userId!));
  ref.read(userShortDataProvider).refresh(arrePref.userId!);
  if (ref.context.mounted) {
    Navigator.of(ref.context).pop();
  }
}
