//@dart=2.9
import 'dart:math' as math;

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/screens/creator_studio_screen/creator_studio_screen.dart';
import 'package:arre_frontend_flutter/screens/explore/explore_hashtag_posts.dart';
import 'package:arre_frontend_flutter/screens/get_started/onboarding_manager_phase_three.dart';
import 'package:arre_frontend_flutter/screens/help_centre/help_centre_categories.dart';
import 'package:arre_frontend_flutter/screens/help_centre/help_centre_sub_categories.dart';
import 'package:arre_frontend_flutter/screens/home_screen/home_screen.dart';
import 'package:arre_frontend_flutter/screens/invite_user/invite_username_phasethree.dart';
import 'package:arre_frontend_flutter/screens/invite_user_new/invite_user_new.dart';
import 'package:arre_frontend_flutter/screens/login/login.dart';
import 'package:arre_frontend_flutter/screens/new_myspace/edit_profile.dart';
import 'package:arre_frontend_flutter/screens/new_myspace/my_account_settings.dart';
import 'package:arre_frontend_flutter/screens/not_found_screen.dart';
import 'package:arre_frontend_flutter/screens/notification_screen/notification_screen.dart';
import 'package:arre_frontend_flutter/screens/onboarding/create_user_name_update.dart';
import 'package:arre_frontend_flutter/screens/onboarding/join_our_community_phase_three.dart';
import 'package:arre_frontend_flutter/screens/onboarding/otp_validation.dart';
import 'package:arre_frontend_flutter/screens/onboarding/phone_number.dart';
import 'package:arre_frontend_flutter/screens/onboarding/pick_your_languages.dart';
import 'package:arre_frontend_flutter/screens/onboarding/profile_picture_added.dart';
import 'package:arre_frontend_flutter/screens/onboarding/profile_picture_added_new.dart';
import 'package:arre_frontend_flutter/screens/onboarding/profile_picture_edit.dart';
import 'package:arre_frontend_flutter/screens/onboarding/profile_picture_upload.dart';
import 'package:arre_frontend_flutter/screens/playlist/playlist.dart';
import 'package:arre_frontend_flutter/screens/profile_screen/profile_screen.dart';
import 'package:arre_frontend_flutter/screens/report_participant_Screen/add_details_report_screen.dart';
import 'package:arre_frontend_flutter/screens/report_participant_Screen/community_guidelines.dart';
import 'package:arre_frontend_flutter/screens/report_participant_Screen/report_participant.dart';
import 'package:arre_frontend_flutter/screens/report_participant_Screen/report_sucess_screen.dart';
import 'package:arre_frontend_flutter/screens/report_participant_Screen/rules_and_regulations.dart';
import 'package:arre_frontend_flutter/screens/search/search_history_trending_hashtags.dart';
import 'package:arre_frontend_flutter/screens/splash_screen.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/privacy_policies.dart';
import 'package:arre_frontend_flutter/screens/terms_and_condition/terms_and_condition.dart';
import 'package:arre_frontend_flutter/screens/update_app_screen.dart';
import 'package:arre_frontend_flutter/widgets/voicepod/voicepod_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';

Future<void> main() async {
  final parser = ArreRouteInfoParser.instance;
  //commented bcz not used
  // final randomNumberGenerator = math.Random();

  String generateRandomString(int lengthOfString) {
    final random = math.Random();
    const allChars =
        'AaBbCcDdlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1EeFfGgHhIiJjKkL234567890';
    // below statement will generate a random string of length using the characters
    // and length provided to it
    final randomString = List.generate(lengthOfString,
        (index) => allChars[random.nextInt(allChars.length)]).join();
    return randomString; // return the generated string
  }

  test(
    "Profile screen",
    () {
      final randomId = Uuid().v1();
      expect(ProfileScreen(userId: randomId).location, "/user/$randomId");
      expect(
        ProfileScreen(userId: randomId).runtimeType,
        parser
            .parsePage(RouteInformation(location: "/user/$randomId"))
            ?.child
            .runtimeType,
      );
    },
  );
  test(
    "Home Screen Rewrite",
    () {
      expect(HomeScreen().location, "/");
      expect(
        HomeScreen().runtimeType,
        parser.parsePage(RouteInformation(location: "/")).child.runtimeType,
      );
    },
  );

  test(
    "Invite Screen New",
    () {
      expect(InviteScreenNew().location, "/invite");
      expect(
        InviteScreenNew().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/invite"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Voicepod Details Screen",
    () {
      final randomId = Uuid().v1();
      expect(
          VoicepodDetailScreen(
            postId: randomId,
          ).location,
          "/voicepod/$randomId");
      expect(
        VoicepodDetailScreen(postId: randomId).runtimeType,
        parser
            .parsePage(RouteInformation(location: "/voicepod/$randomId"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Create Playlist",
    () {
      expect(CreatePlaylistDialog().location, "/playlist/create");
      expect(
        CreatePlaylistDialog().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/playlist/create"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Playlist Details",
    () {
      final randomId = Uuid().v1();
      expect(
          PlaylistDetailsScreen(
            playlistId: randomId,
          ).location,
          "/playlist/$randomId");
      expect(
        PlaylistDetailsScreen(playlistId: randomId).runtimeType,
        parser
            .parsePage(RouteInformation(location: "/playlist/$randomId"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Creator Studio",
    () {
      expect(CreatorStudioScreen().location, "/creator_studio");
      expect(
        CreatorStudioScreen().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/creator_studio"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Onboarding Phase 3",
    () {
      expect(OnBoardingManagerPhaseThree().location, "/welcome_screen");
      expect(
        OnBoardingManagerPhaseThree().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/welcome_screen"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Help Center Categories",
    () {
      expect(HelpCentreCategories().location, "/help_center/categories");
      expect(
        HelpCentreCategories().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/help_center/categories"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Help Center Sub",
    () {
      final randomId = Uuid().v1();
      expect(HelpCentreSubCategories(category: randomId).location,
          "/help_center/categories/$randomId");
      expect(
        HelpCentreSubCategories(category: randomId).runtimeType,
        parser
            .parsePage(
                RouteInformation(location: "/help_center/categories/$randomId"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Login",
    () {
      expect(Login().location, "/login");
      expect(
        Login().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/login"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Account Settings",
    () {
      expect(AccountSettings().location, "/account_settings");
      expect(
        AccountSettings().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/account_settings"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Notifications",
    () {
      expect(NotificationScreen().location, "/notifications");
      expect(
        NotificationScreen().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/notifications"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Otp Validation",
    () {
      expect(OtpValidation().location, "/otp_validation");
      expect(
        OtpValidation().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/otp_validation"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Phone Number",
    () {
      expect(PhoneNumber().location, "/phone_number");
      expect(
        PhoneNumber().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/phone_number"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Community Guidelines",
    () {
      expect(CommunityGuidelines().location, "/community_guidelines");
      expect(
        CommunityGuidelines().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/community_guidelines"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Report Success",
    () {
      expect(ReportSucessScreen().location, "/report_success");
      expect(
        ReportSucessScreen().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/report_success"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Rules and Regulations",
    () {
      expect(RulesAndRegulations().location, "/rules_and_regulations");
      expect(
        RulesAndRegulations().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/rules_and_regulations"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Search History Trending Hashtags",
    () {
      expect(SearchHistoryTrendingHashtags().location,
          "/search_history_trending_hashtag");
      expect(
        SearchHistoryTrendingHashtags().runtimeType,
        parser
            .parsePage(
                RouteInformation(location: "/search_history_trending_hashtag"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "Privacy Policy",
    () {
      expect(PrivacyPolicies().location, "/privacy_policy");
      expect(
        PrivacyPolicies().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/privacy_policy"))
            ?.child
            .runtimeType,
      );
    },
  );

  test(
    "TaC",
    () {
      expect(TermsAndCondition().location, "/terms_and_conditions");
      expect(
        TermsAndCondition().runtimeType,
        parser
            .parsePage(RouteInformation(location: "/terms_and_conditions"))
            ?.child
            .runtimeType,
      );
    },
  );

  // test(
  //   "Video Player Full Screen",
  //   () {
  //     expect(VideoPlayerFullScreen().location, null);
  //   },
  // );

  test(
    "Invite User Phase 3",
    () {
      expect(InviteUserPhaseThree().location, null);
    },
  );

  test(
    "Join community phase three",
    () {
      expect(JoinOurCommunityPhaseThree().location, null);
    },
  );

  test(
    "Profile pic edit",
    () {
      expect(ProfilePictureEditScreen().location, null);
    },
  );

  // test(
  //   "Post byte preview",
  //   () {
  //     expect(PostBytePreview().location, null);
  //   },
  // );

  test(
    "Add details report screen",
    () {
      List<String> categoriesList = [];
      List<String> categoriesId = [];
      for (int i = 0; i <= 5; i++) {
        var a = generateRandomString(8);
        categoriesList.add(a);
      }
      for (int i = 0; i <= 5; i++) {
        var a = generateRandomString(4);
        categoriesId.add(a);
      }
      expect(
          AddDetailsReportScreen(
            null,
            categoriesList,
            categoriesId,
          ).location,
          null);
    },
  );

  test(
    "Report Participant",
    () {
      expect(ReportParticipant(null).location, null);
    },
  );

  test("Unique screen names", () {
    final arreScreens = [
      CreatorStudioScreen().screenName,
      CreatePlaylistDialog().screenName,
      UpdatePlaylistDialog(
        playlist: null,
      ).screenName,
      PlaylistDetailsScreen(
        playlistId: '',
      ).screenName,
      InviteUserPhaseThree().screenName,
      NewEditProfile().screenName,
      AccountSettings().screenName,
      ExploreHashtagPosts("").screenName,
      InviteScreenNew().screenName,
      SearchHistoryTrendingHashtags().screenName,
      TermsAndCondition().screenName,
      PrivacyPolicies().screenName,
      OnBoardingManagerPhaseThree().screenName,
      NotFoundScreen().screenName,
      ReportSucessScreen().screenName,
      ReportParticipant(null).screenName,
      RulesAndRegulations().screenName,
      CommunityGuidelines().screenName,
      AddDetailsReportScreen(null, null, null).screenName,
      // PhotoViewDialog.mediaId(mediaId: "mediaId").screenName,
      HelpCentreSubCategories().screenName,
      HelpCentreCategories().screenName,
      VoicepodDetailScreen(postId: '').screenName,
      NotificationScreen().screenName,
      UpdateAppScreen().screenName,
      HomeScreen().screenName,
      ProfileScreen(userId: '').screenName,
      Login().screenName,
      ProfilePictureEditScreen().screenName,
      CreateUserNameUpdate().screenName,
      JoinOurCommunityPhaseThree().screenName,
      UploadProfileAdded(true).screenName,
      PickYourLanguages().screenName,
      PhoneNumber().screenName,
      UploadProfilePicture().screenName,
      OtpValidation().screenName,
      UploadProfileAddedNew(true).screenName,
      SplashScreen(onAnimationComplete: () {}).screenName,
    ];
    expect(arreScreens.length, arreScreens.toSet().length);
  });
}
