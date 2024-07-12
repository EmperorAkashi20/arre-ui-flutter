import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/user.dart';
import 'package:arre_frontend_flutter/providers/share_tray_users_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/user_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

///Returns true if the user has shared message/entity
Future<bool?> showShareTraySheet({
  required String entityType,
  String? entityId,
  String? message,
}) {
  assert(entityId != null || message != null,
      "Provide either entity id or message");
  assert(!(entityId != null && message != null),
      "Provide only one of  entity id or message");

  arreAnalytics.logEvent(
    GAEvent.SHARE_AS_MESSAGE_BTN_CLICK,
    parameters: {
      EventAttribute.ENTITY_TYPE: entityType,
      EventAttribute.ENTITY_ID: entityId,
    },
  );
  return showModalBottomSheet(
    context: ArreNavigator.instance.context,
    showDragHandle: true,
    routeSettings: RouteSettings(name: GAScreen.SHARE_TRAY_SHEET),
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return _ShareTraySheet(
        entityType: entityType,
        entityId: entityId,
        message: message,
      );
    },
  );
}

class _ShareTraySheet extends ConsumerStatefulWidget {
  final String entityType;
  final String? entityId, message;

  _ShareTraySheet({
    required this.entityType,
    required this.entityId,
    required this.message,
  });

  @override
  ConsumerState createState() => _ShareTraySheetState();
}

class _ShareTraySheetState extends ConsumerState<_ShareTraySheet> {
  final initialSheetSize = 0.6;
  DraggableScrollableController sheetScrollCtrl =
      DraggableScrollableController();

  FocusNode searchFieldFocus =
      FocusNode(debugLabel: "Search Followers TextField");

  @override
  void initState() {
    super.initState();
    searchFieldFocus.addListener(() {
      if (searchFieldFocus.hasFocus) {
        sheetScrollCtrl.animateTo(
          1.0,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeOut,
        );
      } else {
        sheetScrollCtrl.animateTo(
          initialSheetSize,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _clearSearchView() {
    final shareTrayUsersPvd = ref.read(shareTrayUsersProvider);
    shareTrayUsersPvd.searchFieldCtrl.clear();
    searchFieldFocus.unfocus();
  }

  @override
  void dispose() {
    sheetScrollCtrl.dispose();
    searchFieldFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      controller: sheetScrollCtrl,
      minChildSize: 0.3,
      initialChildSize: initialSheetSize,
      builder: (context, controller) {
        final shareTrayUsersPvd = ref.watch(shareTrayUsersProvider);
        Widget child;
        final data = shareTrayUsersPvd.searchResult ?? shareTrayUsersPvd.data;
        if (data != null && data.isNotEmpty) {
          child = NotificationListener<ScrollMetricsNotification>(
            onNotification: shareTrayUsersPvd.onScrollNotification,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 8),
              controller: controller,
              itemBuilder: (_, index) {
                return _UserTile(
                  user: data[index],
                  onPressed: () {
                    try {
                      final isSelected =
                          shareTrayUsersPvd.changeSelection(data[index]);
                      if (isSelected) {
                        _clearSearchView();
                      }
                    } catch (err) {
                      showSnackBarV2(context: context, error: err);
                    }
                  },
                  isSelected: shareTrayUsersPvd.isSelected(data[index].userId),
                );
              },
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 100 / 92,
              ),
            ),
          );
        } else if (data?.isEmpty == true) {
          if (shareTrayUsersPvd.data?.isNotEmpty == true) {
            child = Align(
              alignment: Alignment(0, -0.5),
              child: Text(
                "Bummer! We didn't find any matches for ‘${shareTrayUsersPvd.searchFieldCtrl.text}’",
                style: ATextStyles.sys14Regular(AColors.greyLight),
              ),
            );
          } else {
            child = ArreErrorWidget.empty(
                message: "You can share voicepods only with your followers");
          }
        } else if (shareTrayUsersPvd.isLoading) {
          child = Center(child: CircularProgressIndicator());
        } else {
          child = ArreErrorWidget(
            error: shareTrayUsersPvd.error,
            onPressed: () {
              shareTrayUsersPvd.refresh();
            },
          );
        }

        final textFieldBorder = OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
            gapPadding: 0);
        return Column(
          children: [
            Text(
              "Share as a message",
              style: ATextStyles.sys18Bold(),
            ),
            if (shareTrayUsersPvd.data?.isNotEmpty == true)
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 8),
                child: TextFormField(
                  focusNode: searchFieldFocus,
                  controller: shareTrayUsersPvd.searchFieldCtrl,
                  autovalidateMode: AutovalidateMode.disabled,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  maxLength: 15,
                  maxLengthEnforcement: MaxLengthEnforcement.none,
                  maxLines: 1,
                  autofocus: false,
                  autocorrect: false,
                  cursorColor: AColors.tealPrimary,
                  onFieldSubmitted: (_) => _clearSearchView(),
                  decoration: InputDecoration(
                    counterText: "",
                    isDense: true,
                    fillColor: AColors.BgDark,
                    filled: true,
                    border: textFieldBorder,
                    focusedBorder: textFieldBorder,
                    enabledBorder: textFieldBorder,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                    prefixIcon: Icon(
                      ArreIconsV2.search_outline,
                      size: 16,
                      color: AColors.greyDark,
                    ),
                    // suffixIconConstraints: BoxConstraints.tight(Size.square(24)),
                    suffixIcon: Container(
                      height: 24,
                      width: 24,
                      alignment: Alignment.center,
                      child: shareTrayUsersPvd.isSearching
                          ? CupertinoActivityIndicator()
                          : null,
                    ),
                    // prefixStyle: fieldTextStyle,
                    hintText: "Search your followers",
                    hintStyle: ATextStyles.sys14Regular(AColors.greyDark),
                    // hintStyle: fieldTextStyle.copyWith(
                    //   color: Color(0xFF8D8D8D),
                    // ),
                  ),
                ),
              ),
            // GestureDetector(
            //   onTap: () {},
            //   child: Container(
            //     height: 36,
            //     margin: EdgeInsets.fromLTRB(24, 16, 24, 16),
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       color: AColors.BgDark,
            //       border: Border.all(color: AColors.BgStroke),
            //       borderRadius: BorderRadius.circular(6),
            //     ),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         SizedBox(width: 8),
            //         Icon(
            //           ArreIconsV2.search_outline,
            //           size: 16,
            //           color: AColors.greyDark,
            //         ),
            //         SizedBox(width: 6),
            //         Expanded(
            //           child: Text(
            //             "Search your followers",
            //             style: ATextStyles.sys14Regular(AColors.greyDark),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(child: child),
            if (shareTrayUsersPvd.hasAnyUserSelected)
              Container(
                margin: EdgeInsets.fromLTRB(24, 0, 24, 16),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      arreAnalytics.logEvent(
                        GAEvent.SHARE_AS_MESSAGE_SEND_BTN_CLICK,
                        parameters: {
                          EventAttribute.ENTITY_TYPE: widget.entityType,
                          EventAttribute.ENTITY_ID: widget.entityId,
                        },
                      );
                      await shareTrayUsersPvd.sendMessage(
                        entityType: widget.entityType,
                        entityId: widget.entityId,
                        message: widget.message,
                      );
                      if (mounted) Navigator.of(context).pop(true);
                      showInfoSnackBar("Message sent");
                    } catch (err) {
                      showSnackBarV2(context: context, error: err);
                    }
                  },
                  child: shareTrayUsersPvd.isSending
                      ? SizedBox.square(
                          dimension: 24,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AColors.white,
                          ),
                        )
                      : Text("Send"),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _UserTile extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSelected;
  final ArreUser user;

  const _UserTile({
    required this.user,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.translucent,
      child: Column(
        children: [
          SizedBox.square(
            dimension: 70,
            child: Stack(
              children: [
                Positioned.fill(
                  child: UserAvatarV2(
                    size: 70,
                    mediaId: user.profilePictureMediaId,
                    userName: user.username,
                    borderColor: isSelected ? AColors.tealPrimary : null,
                    borderWidth: 2,
                    showThumbnail: false,
                  ),
                ),
                if (isSelected)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: AColors.tealPrimary,
                      radius: 8,
                      child: Icon(
                        ArreIconsV2.tick_outline,
                        size: 12,
                        color: AColors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Text(
            "@${user.username}",
            style: ATextStyles.sys12Regular(AColors.textLight),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
