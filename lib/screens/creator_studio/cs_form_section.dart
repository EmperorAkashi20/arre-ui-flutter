part of creator_studio;

class _FormSection extends ConsumerWidget {
  final bool showPrivacyOption;

  const _FormSection({
    Key? key,
    required this.showPrivacyOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: FocusScope.of(context).unfocus,
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CSTextField(),
            SizedBox(height: 24.csDynamic(ref)),
            Row(
              children: [
                if (showPrivacyOption) ...[
                  Expanded(child: _CSFormPrivacyDropdown()),
                  SizedBox(width: 12),
                ],
                Expanded(child: _CSFormLanguageDropdown()),
              ],
            ),
            _CSCommunityPrivacyField(),
            SizedBox(height: 600),
          ],
        ),
      ),
    );
  }
}

class _CSTextField extends ConsumerWidget {
  const _CSTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserId = ref.watch(currentUserProvider).userId;
    final userData = ref.watch(
        userShortDataProvider.select((value) => value.getData(currentUserId!)));
    final textEditingCtrl = ref.read(csFormProvider).titleTextEditingCtrl;
    final titleFieldFocusNode = ref.read(csFormProvider).titleFieldFocusNode;
    final titleLengthLimitFormatter =
        ref.read(csFormProvider).titleLengthLimitFormatter;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF232c36),
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: AColors.tealStroke.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: UserAvatarV2(
                  size: 32,
                  mediaId: userData?.profilePictureMediaId,
                  userName: userData?.username,
                ),
              ),
              Expanded(
                child: TextFormField(
                  focusNode: titleFieldFocusNode,
                  controller: textEditingCtrl,
                  textInputAction: TextInputAction.done,
                  inputFormatters: [titleLengthLimitFormatter],
                  onTapOutside: (_) => FocusScope.of(context).unfocus(),
                  autocorrect: false,
                  minLines: 2,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  maxLines: 3,
                  style: TextStyle(color: AColors.greyLight),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 16, 16, 0),
                    counter: SizedBox(),
                    border: InputBorder.none,
                    hintText: "What is this voicepod about?",
                    hintStyle: ATextStyles.user16Regular(
                        AColors.greyLight.withOpacity(0.4)),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  arreAnalytics.logEvent(GAEvent.CS_MEDIA_ATTACH_TAP);
                  ref
                      .read(csFormProvider)
                      .pickMedia(onError: showErrorSnackBar);
                },
                splashRadius: 24,
                constraints: BoxConstraints(minWidth: 48, minHeight: 48),
                icon: Icon(Icons.photo_outlined),
              ),
              Spacer(),
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: textEditingCtrl,
                builder: (context, value, _) {
                  return Text(
                    "(${value.text.characters.length}/${titleLengthLimitFormatter.maxLength})",
                    style: ATextStyles.sys12Regular(AColors.greyLight),
                  );
                },
              ),
              SizedBox(width: 12),
            ],
          ),
          // _Hashtags(),
          _MediaAttachment(),
          // Divider(
          //   color: AColors.tealStroke.withOpacity(0.3),
          //   indent: 16,
          //   endIndent: 16,
          //   thickness: 2,
          //   height: 22,
          // ),
        ],
      ),
    );
  }
}
//
// class _PostVisibilityDropdown extends ConsumerStatefulWidget {
//   @override
//   ConsumerState createState() => __PostVisibilityDropdownState();
// }
//
// class __PostVisibilityDropdownState
//     extends ConsumerState<_PostVisibilityDropdown> {
//   Widget buildItem(PostPrivacy? postPrivacy) {
//     Widget child;
//     final color = AColors.tealPrimary;
//     switch (postPrivacy) {
//       case PostPrivacy.public:
//         child = Row(
//           children: [
//             Icon(ArreIconsV2.public_filled, color: color, size: 16),
//             SizedBox(width: 6),
//             Text("Public"),
//           ],
//         );
//         break;
//       case PostPrivacy.private:
//         child = Row(
//           children: [
//             Icon(ArreIconsV2.private_filled, size: 16, color: color),
//             SizedBox(width: 6),
//             Text("Only me"),
//           ],
//         );
//         break;
//       default:
//         throw UnimplementedError("Women is deprecated");
//     }
//
//     return DefaultTextStyle(
//       style: ATextStyles.sys14Medium(color),
//       child: child,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final postPrivacy =
//         ref.watch(csFormProvider.select((value) => value.postPrivacy));
//     Widget dropdownChild;
//     dropdownChild = buildItem(postPrivacy);
//     // if (postPrivacy != null) {
//     // } else  {
//     //   dropdownChild = Text("Select Privacy");
//     // }
//     Widget child = PopupMenuButton<PostPrivacy>(
//       enabled: true,
//       onSelected: (value) {
//         ref.read(csFormProvider).postPrivacy = value;
//         arreAnalytics.logEvent(
//           GAEvent.CS_PRIVACY_BTN_TAP,
//           parameters: {
//             EventAttribute.PRIVACY: ref.read(csFormProvider).postPrivacy.name,
//           },
//         );
//       },
//       itemBuilder: (ctx) {
//         return [
//           PopupMenuItem(
//             child: buildItem(PostPrivacy.public),
//             value: PostPrivacy.public,
//             enabled: true,
//           ),
//           PopupMenuItem(
//             child: buildItem(PostPrivacy.private),
//             value: PostPrivacy.private,
//             enabled: true,
//           ),
//         ];
//       },
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
//         decoration: BoxDecoration(
//           border: Border.all(color: AColors.tealStroke.withOpacity(0.3)),
//           borderRadius: BorderRadius.circular(100),
//         ),
//         child: Row(
//           children: [
//             dropdownChild,
//             SizedBox(width: 4),
//             Icon(ArreIconsV2.dropdown_outline,
//                 color: AColors.tealPrimary, size: 16),
//           ],
//         ),
//       ),
//     );
//
//     return child;
//   }
// }

enum _CSMediaAction with ActionItem {
  adjust(
    label: "Adjust",
    assetIcon: AssetIcon(ArreAssets.ADJUST_PHOTO_ICON, const Size.square(22)),
  ),
  change(
    label: "Change Image",
    assetIcon: AssetIcon(ArreAssets.PHOTO_ICON, const Size.square(22)),
  );

  const _CSMediaAction({
    required this.label,
    this.assetIcon,
    this.flutterIcon,
  }) : assert(flutterIcon != null || assetIcon != null);

  final String label;
  final Widget? flutterIcon;
  final AssetIcon? assetIcon;

  Widget get icon {
    return flutterIcon ??
        SvgPicture.asset(
          assetIcon!.assetName,
          height: assetIcon!.size.height,
          width: assetIcon!.size.width,
          colorFilter: ColorFilter.mode(color!, BlendMode.srcIn),
        );
  }

  final Color? color = AColors.tealPrimary,
      iconBgColor = Colors.transparent,
      iconBorderColor = AColors.tealLight;
}

class _MediaAttachment extends ConsumerWidget {
  const _MediaAttachment({
    Key? key,
  }) : super(key: key);

  Future<void> showMediaActions(WidgetRef ref) async {
    if (ref.read(csFormProvider).mediaAttachment?.isImage != true) {
      _performAction(_CSMediaAction.change, ref);
      return;
    }
    final action = await showActionsSheet<_CSMediaAction>(
      context: ref.context,
      actions: _CSMediaAction.values,
    );
    if (action != null) {
      _performAction(action, ref);
    }
  }

  void _performAction(_CSMediaAction action, WidgetRef ref) {
    switch (action) {
      case _CSMediaAction.adjust:
        ref.read(csFormProvider).adjustImage();
        break;
      case _CSMediaAction.change:
        ref.read(csFormProvider).pickMedia(onError: showErrorSnackBar);
        break;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget? child;
    final formPvd = ref.watch(csFormProvider);
    final mediaAttachment = formPvd.mediaAttachment;
    final isProcessingThumbnail = formPvd.isProcessingThumbnail;
    if (mediaAttachment != null) {
      child = Stack(
        fit: StackFit.expand,
        children: [
          FutureBuilder<File>(
            key: ValueKey(mediaAttachment.thumbnailRelativePath),
            future: mediaAttachment.thumbnailFile.absolute,
            builder: (ctx, snapshot) {
              if (snapshot.hasData) {
                return Image.file(
                  snapshot.data!,
                  fit: BoxFit.cover,
                  errorBuilder: (ctx, exception, st) {
                    return SizedBox();
                  },
                );
              }
              return SizedBox();
            },
          ),
          Align(
            alignment: Alignment(0.95, -0.9),
            child: FilledIconButton(
              onPressed: () {
                arreAnalytics.logEvent(GAEvent.CS_MEDIA_REMOVE_TAP);
                ref.read(csFormProvider).clearMedia();
              },
              fillColor: Colors.black26,
              size: 32,
              icon: Icon(
                ArreIconsV2.cross_outline,
                size: 16,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.95, 0.9),
            child: FilledIconButton(
              onPressed: () {
                arreAnalytics.logEvent(GAEvent.CS_MEDIA_EDIT_TAP);
                showMediaActions(ref);
              },
              size: 32,
              fillColor: Colors.black26,
              icon: Icon(
                ArreIconsV2.pencil_outline,
                size: 18,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
          if (mediaAttachment.isVideo)
            Align(
              alignment: Alignment.center,
              child: FilledIconButton(
                onPressed: null,
                fillColor: Colors.black26,
                icon: Icon(
                  ArreIconsV2.play_filled,
                  size: 20,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
        ],
      );
      child = GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () async {
          arreAnalytics.logEvent(GAEvent.CS_MEDIA_IMAGE_TAP);
          ArreFiles.instance.openFile(await ref
              .read(csFormProvider)
              .mediaAttachment!
              .mediaFile
              .absolutePath);
        },
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: child,
        ),
      );
    } else if (isProcessingThumbnail) {
      child = AspectRatio(
        aspectRatio: 16 / 9,
        child: Center(child: Text("Processing...")),
      );
    }

    if (child != null) {
      return Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 12),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AColors.BgDark,
        ),
        child: child,
      );
    }

    return SizedBox();
  }
}

class _CSFormPrivacyDropdown extends ConsumerWidget {
  const _CSFormPrivacyDropdown({
    Key? key,
  }) : super(key: key);

  IconData getIconDataFor(String value) {
    switch (value) {
      case "public":
        return ArreIconsV2.public_filled;
      case "private":
        return ArreIconsV2.private_filled;
      default:
        return ArreIconsV2.users;
    }
  }

  ///For `public` and `private` returns respective icon.
  ///for any other value, community icon is returned
  DropdownMenuItem<String> buildDropDownItem(String name, String value) {
    Widget icon;
    switch (value) {
      case "public":
      case "private":
        icon = Icon(getIconDataFor(value), size: 16);
      default:
        icon = Icon(ArreIconsV2.users, size: 16);
    }

    return DropdownMenuItem(
      value: value,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            child: Row(
              children: [
                icon,
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.transparent),
    );

    List<DropdownMenuItem<String>>? dropDownItems;
    String? reqStatus;
    final myCommunitiesPvd = ref.watch(myCommunitiesProvider);
    final selectedPrivacyOption = ref.watch(csFormProvider
        .select((value) => value.communityId ?? value.postPrivacy));

    if (myCommunitiesPvd.hasData) {
      dropDownItems = [
        buildDropDownItem("Public", "public"),
        buildDropDownItem("Private", "private"),
        ...myCommunitiesPvd.data!.map(
          (e) => buildDropDownItem(
            e.title,
            e.communityId,
          ),
        )
      ];
    } else if (myCommunitiesPvd.isLoading) {
      reqStatus = "Loading...";
    } else {
      reqStatus = "Tap to load";
    }

    Widget dropdown = LayoutBuilder(builder: (context, constraints) {
      final buildSelectedItem = (String name, String value) {
        return Container(
          constraints:
              constraints.copyWith(maxWidth: constraints.maxWidth - 56),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                getIconDataFor(value),
                size: 16,
                color: AColors.tealPrimary,
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: ATextStyles.sys12Bold(AColors.tealPrimary),
                ),
              )
            ],
          ),
        );
      };

      return DropdownButtonFormField<String>(
          items: dropDownItems,
          value: selectedPrivacyOption,
          dropdownColor: AColors.BgLight,
          style: ATextStyles.sys14Medium(AColors.greyLight),
          icon: Icon(
            ArreIconsV2.dropdown_outline,
            color: AColors.greyMedium,
            size: 16,
          ),
          selectedItemBuilder: (context) {
            return [
              buildSelectedItem("Public", "public"),
              buildSelectedItem("Private", "private"),
              ...myCommunitiesPvd.data!.map(
                (e) => buildSelectedItem(e.title, e.communityId),
              )
            ];
          },
          decoration: InputDecoration(
            enabled: true,
            filled: true,
            hintText: reqStatus,
            hintStyle: ATextStyles.sys14Regular(AColors.textMedium),
            // label: Text(reqStatus ?? selectedLanguageId ?? ""),
            fillColor: AColors.BgLight,
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            isDense: true,
            border: border,
            enabledBorder: border,
            errorBorder: border,
            focusedBorder: border,
          ),
          onChanged: (String? value) {
            arreAnalytics.logEvent(
              GAEvent.CS_PRIVACY_DROPDOWN_TAP,
              parameters: {
                EventAttribute.ENTITY_ID: value,
                EventAttribute.ENTITY_TYPE: "privacy"
              },
            );
            if (value == null) return;
            ref.read(csFormProvider).setCommunityOrPrivacy(value);
          });
    });

    if (myCommunitiesPvd.hasError) {
      dropdown = GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => ref.refresh(myCommunitiesProvider),
        child: dropdown,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Posting to *",
          style: ATextStyles.sys12Bold(AColors.textDark),
        ),
        SizedBox(height: 5),
        dropdown,
      ],
    );
  }
}

class _CSCommunityPrivacyField extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPostingToCommunity =
        ref.watch(csFormProvider.select((value) => value.communityId != null));

    if (!isPostingToCommunity) {
      return SizedBox();
    }

    final postPrivacy =
        ref.watch(csFormProvider.select((value) => value.postPrivacy));
    final changePrivacy = () {
      final csFormPvd = ref.read(csFormProvider);
      if (postPrivacy == "public") {
        csFormPvd.postPrivacy = "communityOnly";
      } else {
        csFormPvd.postPrivacy = "public";
      }
      arreAnalytics.logEvent(
        GAEvent.CS_COMMUNITY_PRIVACY_SWITCH,
        parameters: {EventAttribute.GA_CONTEXT: csFormPvd.postPrivacy},
      );
    };
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: changePrivacy,
        child: SizedBox(
          height: 32,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 4),
              FlutterSwitch(
                width: 40,
                height: 22,
                toggleSize: 18,
                padding: 2.0,
                value: postPrivacy == "public",
                activeColor: AColors.tealPrimary,
                onToggle: (isOn) {
                  changePrivacy();
                },
              ),
              SizedBox(width: 12),
              Text(
                "Also Post to Public Feed",
                style: ATextStyles.sys14Bold(AColors.textMedium),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CSFormLanguageDropdown extends ConsumerWidget {
  const _CSFormLanguageDropdown({
    Key? key,
  }) : super(key: key);

  Widget buildSelectedItem(String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          ArreIconsV2.language_outline,
          size: 16,
          color: AColors.tealPrimary,
        ),
        SizedBox(width: 8),
        Text(
          name.titleCase,
          style: ATextStyles.sys12Bold(AColors.tealPrimary),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Language tuple list
    List<(String name, String value)>? languages;
    VoidCallback? errorCallback;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.transparent),
    );

    String? reqStatus;

    final languagesDataPvd = ref.watch(csLanguagesDataProvider);
    final communityId =
        ref.watch(csFormProvider.select((value) => value.communityId));
    final selectedLanguageId =
        ref.watch(csFormProvider.select((value) => value.languageId));

    if (selectedLanguageId == null) {
      reqStatus = "Select";
    }

    if (communityId == null) {
      if (languagesDataPvd.hasValue) {
        languages = languagesDataPvd.value!
            .map((e) => (e.nameInEnglish.titleCase, e.nameInEnglish))
            .toList();
      } else if (languagesDataPvd.isLoading) {
        reqStatus = "Loading...";
      } else {
        reqStatus = "Tap to load";
        errorCallback = () => ref.refresh(csLanguagesDataProvider);
      }
    } else {
      final communityLangPvd = ref.watch(communityLangProvider(communityId));
      if (communityLangPvd.hasValue) {
        languages =
            communityLangPvd.value!.map((e) => (e.titleCase, e)).toList();
      } else if (communityLangPvd.isLoading) {
        reqStatus = "Loading...";
      } else {
        reqStatus = "Tap to load";
        errorCallback = () => ref.refresh(communityLangProvider(communityId));
      }
    }

    Widget dropdown = DropdownButtonFormField<String>(
        items: languages
            ?.map((e) => DropdownMenuItem(child: Text(e.$1), value: e.$2))
            .toList(),
        value: selectedLanguageId,
        dropdownColor: AColors.BgLight,
        style: ATextStyles.sys14Medium(AColors.greyLight),
        icon: Icon(
          ArreIconsV2.dropdown_outline,
          color: AColors.greyMedium,
          size: 16,
        ),
        selectedItemBuilder: (context) {
          return languages?.map((e) => buildSelectedItem(e.$1)).toList() ?? [];
        },
        decoration: InputDecoration(
          enabled: true,
          filled: true,
          hintText: reqStatus,
          hintStyle: ATextStyles.sys14Regular(AColors.textMedium),
          // label: Text(reqStatus ?? selectedLanguageId ?? ""),
          fillColor: AColors.BgLight,
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          isDense: true,
          border: border,
          enabledBorder: border,
          errorBorder: border,
          focusedBorder: border,
        ),
        onChanged: (String? value) {
          ref.read(csFormProvider).selectLanguage(value);
          arreAnalytics.logEvent(
            GAEvent.CS_LANGUAGE_DROPDOWN_TAP,
            parameters: {
              EventAttribute.ENTITY_ID: selectedLanguageId,
              EventAttribute.ENTITY_TYPE: "language"
            },
          );
        });

    if (errorCallback != null) {
      dropdown = GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: errorCallback,
        child: dropdown,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Language *",
          style: ATextStyles.sys12Bold(AColors.textDark),
        ),
        SizedBox(height: 5),
        dropdown,
      ],
    );
  }
}
