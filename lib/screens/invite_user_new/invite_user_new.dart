import 'dart:developer';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/invite_screen_providers/invite_screen_provider.dart';
import 'package:arre_frontend_flutter/providers/user_profile_provider.dart';
import 'package:arre_frontend_flutter/screens/invite_user_new/invite_user_my_invitees.dart';
import 'package:arre_frontend_flutter/utils/arre_assets.dart';
import 'package:arre_frontend_flutter/utils/arre_preferences.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_back_button.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

import '../../styles/styles.dart';
import '../../utils/Firebase Analytics/firebase_analytics_service.dart';

class InviteScreenNew extends ConsumerStatefulWidget with ArreScreen {
  const InviteScreenNew({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InviteScreenNewState();

  @override
  Uri? get uri => Uri.parse('/invite');

  @override
  String get screenName => GAScreen.INVITE;

  @override
  bool get isOnboardingRequired => true;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/invite") {
      return AAppPage(child: InviteScreenNew());
    }
    return null;
  }
}

class _InviteScreenNewState extends ConsumerState<InviteScreenNew>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;
  TextEditingController textcontroller = TextEditingController();

  @override
  void initState() {
    // _checkIfUserIsBlueTickUser();
    // _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double windowHeight = MediaQuery.of(context).size.height;
    double windowWidth = MediaQuery.of(context).size.width;
    final userDetailsPvd = ref.watch(userProfileProvider(arrePref.userId!));

    Widget child;
    if (userDetailsPvd.hasData) {
      if (userDetailsPvd.data?.gender == "female") {
        child = Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              ExapndYourTribeLinkContainer(
                  windowHeight: windowHeight,
                  windowWidth: windowWidth,
                  userDetailsPvd: userDetailsPvd),
              Expanded(child: InviteUserMyInvitees()),
            ],
          ),
        );
      } else {
        child = SafeArea(
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                'assets/images/women_run_the_world.png',
                width: windowWidth * 0.7,
                height: windowWidth * 0.7,
              ),
              Container(
                width: windowWidth * 0.8,
                margin: EdgeInsets.only(top: windowHeight * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Uh, Oh!',
                      style: TextStyle(
                        fontSize: windowWidth * 0.1,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.91,
                      ),
                    ),
                    SizedBox(height: windowHeight * 0.015),
                    Text(
                      'We’re women-first, only they have the power to invite people in!',
                      style: ATextStyles.sys20Bold(),
                    ),
                    SizedBox(height: windowHeight * 0.015),
                    Text(
                      "But hang tight, you'll soon be able to get people in on the fun too!",
                      style: ATextStyles.sys16Regular(),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 2),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: windowWidth * 0.8,
                    padding: EdgeInsets.only(bottom: windowHeight * 0.02),
                    child: FilledFlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      borderRadius: 10,
                      child: Text(
                        'Back to Feed',
                        style: ATextStyles.sys14Bold(AColors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    } else if (userDetailsPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(
        child: ArreErrorWidget(
          error: userDetailsPvd.error,
          onPressed: () {
            userDetailsPvd.refresh();
          },
        ),
      );
    }
    return Scaffold(
      backgroundColor: AColors.BgDark,
      appBar: AppBar(
        leading: ABackButton(),
        title: Text('EXPAND YOUR TRIBE'),
      ),
      body: child,
    );
  }
}

class TabBarContainer extends StatelessWidget {
  final double windowHeight;
  final double windowWidth;

  const TabBarContainer({
    Key? key,
    required TabController tabController,
    required this.windowHeight,
    required this.windowWidth,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: windowHeight * 0.04,
      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
      decoration: BoxDecoration(
        color: AColors.BgLight,
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          color: AColors.tealPrimary,
        ),
        labelColor: AColors.tealLight,
        unselectedLabelColor: Colors.white,
        tabs: [
          Tab(
            text: "MY CONTACTS",
          ),
          Tab(
            text: "MY INVITEES",
          ),
        ],
      ),
    );
  }
}

class ExapndYourTribeLinkContainer extends ConsumerWidget {
  final double windowHeight;
  final double windowWidth;
  final UserProfileProvider userDetailsPvd;

  const ExapndYourTribeLinkContainer({
    required this.windowHeight,
    required this.windowWidth,
    required this.userDetailsPvd,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inviteData = ref.watch(inviteDetailsFutureProvider);
    return inviteData.when(
      data: (inviteData) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.only(
                        top: 13,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(15.0),
                          topRight: const Radius.circular(15.0),
                          bottomLeft: const Radius.circular(15.0),
                          bottomRight: const Radius.circular(15.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AColors.expandYourTribeCardGradientColor,
                            AColors.tealPrimary,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          ExpandYourTribeLinkShareContainer(
                            windowWidth: windowWidth,
                            linkText: inviteData.uniqueDeepLink,
                            noOfInvites: inviteData.numberOfInvitesLeft,
                          ),
                          SizedBox(
                            height: windowHeight * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: windowWidth * 0.6,
                                child: Text(
                                  inviteData.uniqueDeepLink.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: ATextStyles.sys14Bold(Colors.white),
                                ),
                              ),
                              if (inviteData.numberOfInvitesLeft.toString() !=
                                      null.toString() &&
                                  inviteData.numberOfInvitesLeft != 0)
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          log("link text is:" +
                                              inviteData.uniqueDeepLink);
                                          Utils.copyToClipboard(
                                              inviteData.uniqueDeepLink);
                                          arreAnalytics.logEvent(
                                              GAEvent
                                                  .EXPAND_TRIBE_INVITE_LINK_COPY_CLICK,
                                              parameters: {
                                                EventAttribute
                                                        .CURRENT_SCREEN_NAME:
                                                    "expand_tribe",
                                                EventAttribute
                                                        .PREVIOUS_SCREEN_NAME:
                                                    "home_screen",
                                                EventAttribute.FEATURE_NAME:
                                                    "invite_link_copy",
                                                EventAttribute.ACTION: "click",
                                              });
                                        },
                                        child: Icon(
                                          ArreIconsV2.drafts_outline,
                                          size: 30,
                                        )),
                                    SizedBox(
                                      width: windowWidth * 0.03,
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          log("link text is:" +
                                              inviteData.uniqueDeepLink);
                                          Share.share(
                                              inviteData.uniqueDeepLink);
                                          arreAnalytics.logEvent(
                                              GAEvent
                                                  .EXPAND_TRIBE_INVITE_LINK_SHARE_CLICK,
                                              parameters: {
                                                EventAttribute
                                                        .CURRENT_SCREEN_NAME:
                                                    "expand_tribe",
                                                EventAttribute
                                                        .PREVIOUS_SCREEN_NAME:
                                                    "home_screen",
                                                EventAttribute.FEATURE_NAME:
                                                    "invite_link_share",
                                                EventAttribute.ACTION: "click",
                                              });
                                        },
                                        child: Icon(
                                          ArreIconsV2.share_outline,
                                          size: 30,
                                        )),
                                    SizedBox(
                                      width: windowWidth * 0.03,
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          SizedBox(
                            height: windowHeight * 0.02,
                          ),
                          InvitesLeftContainer(
                            windowWidth: windowWidth,
                            windowHeight: windowHeight,
                            noOfInvitesLeft:
                                inviteData.numberOfInvitesLeft.toString(),
                            hasAlreadyRequestedForMore:
                                inviteData.isInviteRequested,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -2,
                    right: -2,
                    child: SvgPicture.asset("assets/svg/invite_stars.svg"),
                  ),
                  Positioned(
                      bottom: -2,
                      left: -2,
                      child: SvgPicture.asset("assets/svg/invite_stars.svg"))
                ],
              ),
            ),
            if (inviteData.isInviteRequested == true &&
                inviteData.numberOfInvitesLeft < 5)
              Column(
                children: [
                  SizedBox(
                    height: windowHeight * 0.01,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ArreAssets.REQUEST_FOR_MORE_UNDER_REVIEW_ICON,
                        ),
                        SizedBox(
                          width: windowWidth * 0.01,
                        ),
                        Expanded(
                          child: Text(
                            "YOUR REQUEST FOR MORE INVITES IS UNDER REVIEW",
                            style: TextStyle(
                              color: AColors.textDark.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: windowHeight * 0.01,
                  ),
                ],
              ),
            // if (userDetails.isIncompleteProfile)
            //   Container(
            //     width: windowWidth * 0.87,
            //     child: FilledFlatButton(
            //       onPressed: () {
            //         ArreNavigator.instance.push(
            //           AGlobalPage(
            //               child: EditProfileScreen(userDetails: userDetails)),
            //         );
            //       },
            //       borderRadius: 10,
            //       backgroundColor: AColors.tealPrimary.withOpacity(0.16),
            //       borderSide: BorderSide(color: AColors.tealPrimary),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             'Finish Profile to get more invites',
            //             style: ATextStyles.sys12Bold(AColors.white),
            //           ),
            //           SizedBox(width: windowWidth * 0.03),
            //           Icon(ArreIconsV2.arrow_outline, size: 14)
            //         ],
            //       ),
            //     ),
            //   ),
          ],
        );
      },
      error: (error, s) => Container(),
      loading: () => Center(child: ACommonLoader()),
    );
  }
}

class ExpandYourTribeLinkShareContainer extends StatelessWidget {
  const ExpandYourTribeLinkShareContainer({
    Key? key,
    required this.windowWidth,
    required this.linkText,
    required this.noOfInvites,
  }) : super(key: key);

  final double windowWidth;
  final String linkText;
  final int noOfInvites;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "We’re women-first, and only ",
              style: ATextStyles.sys14Regular(Colors.white),
            ),
            TextSpan(
              text: "women have the exclusive power",
              style: ATextStyles.sys14Bold(Colors.white),
            ),
            TextSpan(
              text: " to expand their tribe! So what are you waiting for?",
              style: ATextStyles.sys14Regular(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class InvitesLeftContainer extends ConsumerWidget {
  final double windowWidth;
  final double windowHeight;
  final String noOfInvitesLeft;
  final bool hasAlreadyRequestedForMore;

  const InvitesLeftContainer({
    Key? key,
    required this.windowWidth,
    required this.windowHeight,
    required this.noOfInvitesLeft,
    required this.hasAlreadyRequestedForMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inviteRequestForMorePvd = ref.watch(inviteRequestForMoreProvider);
    return Container(
      padding: EdgeInsets.only(top: 13, bottom: 14, left: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(15.0),
          bottomRight: const Radius.circular(15.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(ArreIconsV2.invite_outline),
          SizedBox(
            width: windowWidth * 0.01,
          ),
          RichText(
            text: new TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              children: <TextSpan>[
                new TextSpan(
                  text: 'You have ',
                  style: ATextStyles.sys14Regular(
                    Colors.white.withOpacity(0.7),
                  ),
                ),
                new TextSpan(
                  text: noOfInvitesLeft,
                  style: ATextStyles.sys14Regular(
                    Colors.white,
                  ),
                ),
                new TextSpan(
                  text: ' invites left',
                  style: ATextStyles.sys14Regular(
                    Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          if (int.tryParse(noOfInvitesLeft)! < 5 &&
              hasAlreadyRequestedForMore == false)
            inviteRequestForMorePvd.hasRequested == false
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: RequestForMoreContainer(),
                  )
                : Container(),
        ],
      ),
    );
  }
}

class RequestForMoreContainer extends ConsumerWidget {
  const RequestForMoreContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(inviteRequestForMoreProvider).requestForMoreInvite(
              onSuccess: showInfoSnackBar,
              onError: showErrorSnackBar,
            );
        arreAnalytics
            .logEvent(GAEvent.EXPAND_TRIBE_REQUEST_INVITES_CLICK, parameters: {
          EventAttribute.CURRENT_SCREEN_NAME: "expand_tribe",
          EventAttribute.PREVIOUS_SCREEN_NAME: "home_screen",
          EventAttribute.FEATURE_NAME: "request_invites",
          EventAttribute.ACTION: "click",
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: 6, bottom: 6, right: 8, left: 8),
        decoration: BoxDecoration(
          color: AColors.orangePrimary,
          borderRadius: new BorderRadius.only(
            bottomLeft: const Radius.circular(15.0),
            bottomRight: const Radius.circular(15.0),
            topLeft: const Radius.circular(15.0),
            topRight: const Radius.circular(15.0),
          ),
        ),
        child: Text(
          "Request for more",
          style: ATextStyles.requestForMoreTextExpandYourTribeStyle(
            Colors.black,
          ),
        ),
      ),
    );
  }
}
