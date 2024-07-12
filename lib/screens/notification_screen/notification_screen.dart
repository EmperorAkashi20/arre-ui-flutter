// ignore_for_file: import_of_legacy_library_into_null_safe
import 'dart:async';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/providers/notification_providers/notification_provider.dart';
import 'package:arre_frontend_flutter/providers/user_data_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_network_image.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:arre_notification_gql/arre_notification_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../../utils/arre_assets.dart';
import '../profile_screen/profile_screen.dart';

class NotificationScreen extends ConsumerStatefulWidget with ArreScreen {
  const NotificationScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _NotificationScreenState();

  @override
  Uri? get uri => Uri.parse('/notifications');

  @override
  String get screenName => GAScreen.NOTIFICATIONS;

  static ArrePage? maybeParse(Uri uri) {
    if (uri.path == "/notifications") {
      return AAppPage(child: NotificationScreen());
    }
    return null;
  }
}

class _NotificationScreenState extends ConsumerState<NotificationScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _loadNotificationsAndMarkAsSeen();
  }

  void _loadNotificationsAndMarkAsSeen() async {
    await ref.read(notificationProvider).loadNotifications();
    _timer = Timer(Duration(milliseconds: 500), () {
      if (!mounted) {
        return;
      }
      final notificationPvd = ref.read(notificationProvider);
      final firstPageNotifications =
          notificationPvd.data?.take(NotificationProvider.pageSize);
      if (firstPageNotifications != null) {
        ref
            .read(notificationProvider)
            .markAllNotificationAsSeen(firstPageNotifications);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        titleSpacing: NavigationToolbar.kMiddleSpacing,
      ),
      body: NotificationScreenBody(),
    );
  }
}

class NotificationScreenBody extends ConsumerWidget {
  const NotificationScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationPvd = ref.watch(notificationProvider);
    Widget child;
    if (notificationPvd.hasData) {
      if (notificationPvd.data!.isNotEmpty) {
        final children = notificationPvd.data!
            .map((notification) => _NotificationListTile(notification))
            .toList();
        child = RefreshIndicator(
          onRefresh: () async {
            await Future.wait([
              ref.read(notificationProvider).refresh(),
            ]);
          },
          child: NotificationListener<ScrollMetricsNotification>(
            onNotification: notificationPvd.onScrollNotification,
            child: ListView(children: children),
          ),
        );
      } else {
        child = _EmptyNotificationsState();
      }
    } else if (notificationPvd.isLoading) {
      child = Center(child: ACommonLoader());
    } else {
      child = Center(child: ArreErrorWidget(error: notificationPvd.error));
    }
    return IconTheme(
      data: IconThemeData(size: 20, color: Color(0xffB1B8B6)),
      child: child,
    );
  }
}

class _EmptyNotificationsState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AColors.BgDark,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(ArreAssets.NOTIFY_EMPTY_IMG),
              SizedBox(
                height: 30,
              ),
              Text(
                "No new notifications found!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AColors.textDark,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NotificationListTile extends ConsumerStatefulWidget {
  final GNotificationData_response_data notification;

  const _NotificationListTile(this.notification);

  @override
  ConsumerState createState() => __NotificationListTileState();
}

class __NotificationListTileState extends ConsumerState<_NotificationListTile> {
  @override
  void initState() {
    super.initState();
    if (widget.notification.senderId.isValid) {
      ref.read(userShortDataProvider).fetchData(widget.notification.senderId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final notification = widget.notification;
    Widget? leading;
    if (notification.mediaId.isValid) {
      leading = ArreNetworkImage.mediaId(
        notification.mediaId!,
        height: 40,
        width: 40,
        shape: CircleBorder(),
      );
    } else if (notification.senderId.isValid) {
      final userData = ref.watch(userShortDataProvider
          .select((value) => value.getData(notification.senderId!)));
      leading = InkWell(
        onTap: () {
          ArreNavigator.instance.push(
            AAppPage(child: ProfileScreen(userId: notification.senderId!)),
          );
        },
        child: UserAvatarV2(
          size: 40,
          mediaId: userData?.profilePictureMediaId,
          userName: userData?.username,
        ),
      );
    }
    DateTime date = DateTime.fromMillisecondsSinceEpoch(
        int.parse(notification.createdOn.toString()));
    final redirectUrl = notification.redirectUrl;
    final title = notification.notificationTitle.toString();
    final body = notification.notificationBody.toString();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: notification.seenByUser == true
            ? Colors.transparent
            : AColors.BgLight,
        border: Border(
          bottom: BorderSide(color: AColors.BgStroke, width: 1.0),
        ),
      ),
      child: ListTile(
        leading: leading,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title, style: ATextStyles.sys14Bold(AColors.textLight)),
            SizedBox(height: 3),
            if (body.isNotEmpty)
              Text(body, style: ATextStyles.sys14Regular(AColors.textMedium)),
            SizedBox(height: 5)
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat("HH:mm | MMM dd, yyyy").format(date),
              style: new TextStyle(
                  color: AColors.greyLight.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            if (redirectUrl != null)
              Text(
                notification.ctaText.toString(),
                style: new TextStyle(
                    color: AColors.tealPrimary,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
          ],
        ),
        onTap: redirectUrl != null
            ? () {
                ArreNavigator.instance
                    .pushRouteLocation(notification.redirectUrl!);
                ref
                    .read(notificationProvider)
                    .markAllNotificationAsSeen([notification]);
              }
            : null,
      ),
    );
  }
}
