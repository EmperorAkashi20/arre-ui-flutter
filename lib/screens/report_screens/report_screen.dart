import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/screens/web_view_screen.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/arre_localizations.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/filled_icon_button.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../providers/report_screen_provider/report_provider.dart';
import '../../providers/user_data_provider.dart';
import '../../utils/arre_assets.dart';
import '../../widgets/arre_back_button.dart';
import '../../widgets/arre_error_widget.dart';
import '../../widgets/user_avatar.dart';

enum ReportEntityType {
  user(
    label: "Why are you reporting ",
    communityEntityType: "reportedUser",
  ),
  voicepod(
    label: "Why are you reporting this voicepod from",
    communityEntityType: "reportedVoicepod",
  ),
  comment(
    label: "Why are you reporting this comment from",
    communityEntityType: "reportedComment",
  ),
  reply(
    label: "Why are you reporting this comment from",
    communityEntityType: "reportedReply",
  ),
  reportMessage(
      communityEntityType: "reportedMessage",
      label: "Why are you reporting this message from");

  const ReportEntityType({
    required this.label,
    required this.communityEntityType,
  });

  final String label;

  final String communityEntityType;

  static ReportEntityType fromStringValue(String value) {
    switch (value) {
      case "comment":
        return ReportEntityType.comment;
      case "reply":
        return ReportEntityType.reply;
    }
    throw UnimplementedError("$value entity report type");
  }
}

class ReportScreen extends ConsumerStatefulWidget with ArreScreen {
  final ReportEntityType entityType;
  final String entityId;
  final String userId;
  final String? communityId;

  ReportScreen({
    required this.entityType,
    required this.entityId,
    required this.userId,
    required this.communityId,
  });

  @override
  _ReportScreenState createState() => _ReportScreenState();

  @override
  Uri? get uri => null;

  @override
  String get screenName => GAScreen.REPORT;
}

class _ReportScreenState extends ConsumerState<ReportScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(userShortDataProvider).fetchData(widget.userId);
    ref.read(reportProvider).setReportInfo(
          entityType: widget.entityType,
          entityId: widget.entityId,
          userId: widget.userId,
          communityId: widget.communityId,
        );
  }

  @override
  Widget build(BuildContext context) {
    final userShortData =
        ref.watch(userShortDataProvider).getData(widget.userId);
    return Scaffold(
        appBar: AppBar(
          leading: ABackButton(),
          title: Text("Report"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 2),
              child: Column(
                children: [
                  ListTile(
                    minLeadingWidth: 10,
                    horizontalTitleGap: 8,
                    contentPadding: EdgeInsets.all(0),
                    title: RichText(
                      text: TextSpan(
                          text: widget.entityType.label,
                          style: ATextStyles.sys14Bold(AColors.textDark),
                          children: [
                            TextSpan(
                              text:
                                  " @${userShortData?.username ?? "Arré User"}",
                              style: ATextStyles.sys14Bold(AColors.tealPrimary),
                            ),
                          ]),
                    ),
                    subtitle: Text(context.tr.helps_solve_effectively,
                        style: ATextStyles.sys14Regular(
                            AColors.textDark.withOpacity(0.4))),
                    leading: Container(
                      width: 42,
                      height: 42,
                      child: Material(
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: UserAvatarV2(
                          size: 42,
                          mediaId: userShortData?.profilePictureMediaId,
                          userName: userShortData?.username,
                        ),
                      ),
                    ),
                  ),
                  CategoryGrid(),
                  SizedBox(height: 32),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(context.tr.helpful_inks,
                          textAlign: TextAlign.left,
                          style: ATextStyles.sys14Bold(AColors.tealPrimary))),
                  SizedBox(height: 5),
                  HelpFullLinkListTile(
                      title: context.tr.community_guidelines,
                      subtitle: context.tr.checkout_our_guidelines,
                      image: ArreAssets.COMMUNITY_GUIDELINES_IMG,
                      onTap: () => ArreNavigator.instance.push(AAppPage(
                              child: WebViewScreen(
                            url:
                                "https://www.arrevoice.com/community-guidelines",
                          )))),
                  // HelpFullLinkListTile(
                  //     title: AppLocalizations.of(context)?.rulesAndRegulations,
                  //     subtitle: AppLocalizations.of(context)!
                  //         .spreadTheWordThroughDiscussion,
                  //     image: ArreAssets.RULES_FOR_DISCUSSION_IMG,
                  //     onTap: () => ArreNavigator.instance
                  //         .push(AAppPage(child: RulesAndRegulations()))),
                ],
              ),
            ),
          ),
        ));
  }
}

class CategoryGrid extends ConsumerWidget {
  void submitReport(WidgetRef ref) {
    final reportCatPvd = ref.read(reportProvider);
    reportCatPvd.submitReport(onSuccess: (message) {
      if (ref.context.mounted) {
        Navigator.of(ref.context).pop();
      }
      showInfoSnackBar(
          "Thank you for your contribution! Be assured, our team will look into this and take necessary action");
    }, onError: (err) {
      // showErrorSnackBar(err);
    });
    Navigator.of(ref.context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportCatPvd = ref.watch(reportProvider);

    if (reportCatPvd.hasData) {
      return Column(
        children: [
          GridView.builder(
            itemCount: reportCatPvd.data!.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 94,
              childAspectRatio: 61 / 94,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return CategoryItem(
                reportCataData: reportCatPvd.data![index],
                reportCataPvd: reportCatPvd,
                isSelected: reportCatPvd.isSelected(
                  reportCatPvd.data![index].name,
                ),
              );
            },
          ),
          SizedBox(
            height: 44,
            width: 130,
            child: FilledFlatButton(
              onPressed: () => submitReport(ref),
              backgroundColor: reportCatPvd.selectedCategories.isNotEmpty
                  ? AColors.tealPrimary
                  : Color(0xFFAAB5B3),
              child: Text(
                "Submit",
                style: ATextStyles.buttons(),
              ),
            ),
          ),
        ],
      );
    } else if (reportCatPvd.isLoading) {
      return Center(child: ACommonLoader());
    } else if (reportCatPvd.hasError) {
      return Center(
        child: ArreErrorWidget(
          error: reportCatPvd.error,
        ),
      );
    } else {
      return Center(
        child: ArreErrorWidget(
          error: "Something went wrong, please try again later",
        ),
      );
    }
  }
}

class CategoryItem extends ConsumerWidget {
  final GGetReportsCategoriesData_response_data reportCataData;
  final ReportProvider reportCataPvd;
  final bool isSelected;

  const CategoryItem({
    required this.reportCataData,
    required this.reportCataPvd,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        reportCataPvd.changeSelection(reportCataData.name);
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AColors.BgLight,
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? AColors.orangePrimary : AColors.tealPrimary,
                width: 1,
              ),
            ),
            child: Image.network(
              reportCataData.icon,
              color: isSelected ? AColors.orangePrimary : AColors.tealPrimary,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(reportCataData.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: ATextStyles.sys12Regular(
                  isSelected ? AColors.orangePrimary : AColors.tealStroke)),
        ],
      ),
    );
  }
}

class HelpFullLinkListTile extends ConsumerWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final void Function()? onTap;

  const HelpFullLinkListTile({
    this.title,
    this.subtitle,
    this.image,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      dense: true,
      minLeadingWidth: 17,
      trailing: InkWell(
        onTap: onTap,
        child: SvgPicture.asset(
          ArreAssets.FORWARD_ARROW_ICON,
          colorFilter: ColorFilter.mode(AColors.textDark, BlendMode.srcIn),
        ),
      ),
      leading: InkWell(
        child: Container(
          margin: EdgeInsets.only(top: 5),
          child: SvgPicture.asset(
            image!,
            colorFilter: ColorFilter.mode(AColors.textDark, BlendMode.srcIn),
            height: 18,
            width: 15,
          ),
        ),
      ),
      title: Text(title ?? "",
          style: TextStyle(
            fontFamily: "Acumin Pro",
            color: AColors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
          )),
      subtitle: Text(subtitle ?? "",
          style: TextStyle(
            fontFamily: "Acumin Pro",
            color: AColors.textDark,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
          )),
      onTap: onTap,
    );
  }
}
