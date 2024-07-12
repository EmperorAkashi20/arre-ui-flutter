part of arre_router;

class _BottomNavigationBar extends ConsumerWidget {
  const _BottomNavigationBar({Key? key}) : super(key: key);

  Widget buildCSIcon(WidgetRef ref) {
    return ArreGradientIconButton(
      size: 48,
      icon: Icon(ArreIconsV2.create_filled, size: 36, color: Colors.white),
      onPressed: null,
    );
  }

  Widget buildUserAvatar(WidgetRef ref, bool isSelected) {
    String? profilePictureMediaId, username;
    final userId = ref.watch(currentUserProvider).userId;
    if (userId != null) {
      final userShortData = ref.watch(
          userShortDataProvider.select((value) => value.getData(userId)));
      profilePictureMediaId = userShortData?.profilePictureMediaId ??
          arrePref.getString(PrefKey.PROFILE_PICTURE_MEDIA_ID);
      username = userShortData?.username ?? arrePref.userName;
    }
    Color? borderColor;
    if (isSelected) {
      borderColor = Colors.white;
    }

    final avatar = UserAvatarV2(
      mediaId: profilePictureMediaId,
      userName: username,
      size: 28,
      borderColor: borderColor,
    );

    return avatar;
  }

  Widget buildMessageIcon(WidgetRef ref) {
    final hasUnreadMsg = ref.watch(messagesUnreadStateProvider);
    return Badge(
      child: Icon(ArreIconsV2.audio_message_outline),
      isLabelVisible: hasUnreadMsg,
      alignment: Alignment(0, 1.5),
    );
  }

  Widget buildNotificationIcon(WidgetRef ref) {
    final hasUnreadNotifn = ref.watch(notificationsUnreadStateProvider);
    return Badge(
      child: Icon(Icons.notifications_outlined),
      isLabelVisible: hasUnreadNotifn,
      alignment: Alignment(0, 1.5),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Color(0x4DA2E1D9), width: 1)),
      ),
      position: DecorationPosition.foreground,
      child: BottomNavigationBar(
        backgroundColor: AColors.BgDark,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedFontSize: 4,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 28,
        currentIndex: ref
            .watch(homeScreenProvider.select((value) => value.currentTabIndex)),
        onTap: (index) async {
          final prevIndex = ref.read(
              homeScreenProvider.select((value) => value.currentTabIndex));
          if (prevIndex == index && index == 0) {
            ref.read(homePageScrollController).animateTo(
                  0,
                  duration: Duration(milliseconds: 340),
                  curve: Curves.easeOut,
                );
          }
          if (index != 0) {
            await ref.read(ensureOnboardedWithAppStateChange.future);
          }
          if (index == 1) {
            ref.read(messagesUnreadStateProvider.notifier).markAsRead();
          } else if (index == 3) {
            ref.read(notificationsUnreadStateProvider.notifier).markAsRead();
          }
          switch (index) {
            case 2:
              openCreatorStudio(context);
              break;
            default:
              ref.read(homeScreenProvider).changeTab(index);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(ArreIconsV2.home_outline),
              activeIcon: Icon(ArreIconsV2.home_filled),
              label: "Home"),
          BottomNavigationBarItem(
            icon: buildMessageIcon(ref),
            activeIcon:
                Icon(ArreIconsV2.audio_message_filled, color: AColors.white),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            label: "Creator Studio",
            icon: buildCSIcon(ref),
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: buildNotificationIcon(ref),
            activeIcon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            label: "My Profile",
            icon: Consumer(
              builder: (context, ref, child) {
                return buildUserAvatar(ref, false);
              },
            ),
            activeIcon: Consumer(
              builder: (context, ref, child) {
                return buildUserAvatar(ref, true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
