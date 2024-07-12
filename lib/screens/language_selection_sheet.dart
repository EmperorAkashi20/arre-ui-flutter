import 'dart:developer';
import 'dart:io';

import 'package:arre_frontend_flutter/arre_routing/routing.dart';
import 'package:arre_frontend_flutter/models/src/language.dart';
import 'package:arre_frontend_flutter/providers/interests_providers.dart/languages_provider.dart';
import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:arre_frontend_flutter/utils/Firebase%20Analytics/firebase_analytics_service.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/widgets/arre_common_loader.dart';
import 'package:arre_frontend_flutter/widgets/arre_error_widget.dart';
import 'package:arre_frontend_flutter/widgets/arre_icons.dart';
import 'package:arre_frontend_flutter/widgets/language_card.dart';
import 'package:arre_post_manage_gql/arre_post_manage_gql.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

Future<List<String>?> showLanguageSelectionSheet({bool isDismissible = true}) {
  log("showLanguageSelectionSheet ", name: "DEBUGGING_ONBOARDING");
  return showModalBottomSheet<List<String>>(
    context: ArreNavigator.instance.context,
    routeSettings: RouteSettings(name: GAScreen.LANGUAGE_SELECTION_SHEET),
    useRootNavigator: true,
    showDragHandle: true,
    backgroundColor: Color(0xFF161f26),
    useSafeArea: true,
    isScrollControlled: true,
    isDismissible: isDismissible,
    enableDrag: isDismissible,
    builder: (_) {
      return _LanguageSelectionSheet(isDismissible);
    },
  );
}

class _LanguageSelectionSheet extends ConsumerStatefulWidget {
  final bool isDismissible;

  const _LanguageSelectionSheet(this.isDismissible, {Key? key})
      : super(key: key);

  @override
  ConsumerState createState() => __LanguageSelectionSheetState();
}

class __LanguageSelectionSheetState
    extends ConsumerState<_LanguageSelectionSheet> {
  late List<Language> orderedLanguages;

  @override
  void initState() {
    super.initState();
    orderedLanguages = List.from(LANGUAGES);
    final firstLang2Display = LANGUAGES.firstWhere(
        (element) => Platform.localeName.startsWith(element.localeNamePrefix),
        orElse: () => LANGUAGES.first);
    orderedLanguages.remove(firstLang2Display);
    orderedLanguages.insert(0, firstLang2Display);
  }

  void updateLanguages() {
    final userLanguagesPvd = ref.read(userLanguagesProvider);
    userLanguagesPvd.update(
      onSuccess: (message) {
        var selectedLanguages = List.from(userLanguagesPvd.selectedLanguages);
        selectedLanguages.sort();
        arreAnalytics.logEvent(
          GAEvent.LANGUAGES_SELECTED,
          parameters: {
            EventAttribute.EVENT_COUNT:
                userLanguagesPvd.selectedLanguages.length,
            EventAttribute.EVENT_VALUE: selectedLanguages.join(", "),
            EventAttribute.GA_CONTEXT:
                widget.isDismissible ? "app_settings" : "onboarding"
          },
        );
        if (context.mounted) {
          Navigator.of(context).pop(userLanguagesPvd.selectedLanguages);
        }
        showInfoSnackBar(message);
      },
      onError: (err) {
        showSnackBarV2(error: err, context: context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDismissible = widget.isDismissible;
    Widget child;
    final userLanguagesPvd = ref.watch(userLanguagesProvider);
    child = LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Voicepod Languages',
                style: ATextStyles.sys20Bold(Colors.white),
              ),
              SizedBox(height: 10),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 24),
              //   child: Text(
              //     'We will recommend voicepods in your preferred languages. You can select multiple languages',
              //     style: ATextStyles.sys14Regular(AColors.textDark),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              // SizedBox(height: 25),
              GridView.builder(
                itemCount: orderedLanguages.length,
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 121,
                  mainAxisExtent: 70,
                  childAspectRatio: 105 / 144,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return LanguageCard(
                    language: orderedLanguages[index],
                    isSelected: userLanguagesPvd
                        .isSelected(orderedLanguages[index].value),
                    onTap: () async {
                      userLanguagesPvd
                          .changeSelection(orderedLanguages[index].value);
                    },
                    imageSize: Size(
                      constraints.maxWidth * 0.125,
                      constraints.maxWidth * 0.08,
                    ),
                    padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth * 0.016,
                      constraints.maxWidth * 0.016,
                      constraints.maxWidth * 0.013,
                      0,
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: updateLanguages,
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)))),
                        child: userLanguagesPvd.isSubmitting
                            ? SizedBox.square(
                                dimension: 24,
                                child: ACommonLoader(),
                              )
                            : Text(
                                isDismissible ? 'Update Languages' : "Continue",
                                style: ATextStyles.sys16Medium(),
                              ),
                      ),
                    ),
                    // if (isDismissible) ...[
                    //   SizedBox(width: 35),
                    //   Expanded(
                    //     child: TextButton(
                    //       onPressed: () {
                    //         Navigator.of(context).pop();
                    //       },
                    //       child: Text(
                    //         'Cancel',
                    //         style: ATextStyles.sys16Medium(AColors.tealPrimary),
                    //       ),
                    //     ),
                    //   ),
                    // ]
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      );
    });

    return WillPopScope(
      child: child,
      onWillPop: () {
        if (!isDismissible) {
          updateLanguages();
        }
        return SynchronousFuture(isDismissible);
      },
    );
  }
}
//
// class LanguageButton extends ConsumerWidget {
//   final GLanguage language;
//
//   const LanguageButton({
//     required this.language,
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isSelected = ref.watch(
//         userLanguagesProvider.select((value) => value.isSelected(language)));
//     Color color = isSelected ? AColors.orangePrimary : AColors.tealStroke;
//     return GestureDetector(
//       behavior: HitTestBehavior.translucent,
//       onTap: () => ref.read(userLanguagesProvider).changeSelection(language),
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           Positioned.fill(
//             child: Padding(
//               padding: const EdgeInsets.all(6),
//               child: Tooltip(
//                 message: language.name,
//                 child: AspectRatio(
//                   aspectRatio: 2,
//                   child: DecoratedBox(
//                     decoration: BoxDecoration(
//                       color: AColors.BgLight,
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: color),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           language.name,
//                           style: ATextStyles.sys14Regular(color),
//                         ),
//                         SizedBox(height: 2),
//                         if (language.name.toLowerCase() != "english")
//                           Text(
//                             "(${language.nameInEnglish.titleCase})",
//                             style: ATextStyles.sys12Regular(color),
//                           ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           if (isSelected) ...[
//             Positioned(
//               top: 0,
//               right: 0,
//               child: Container(
//                 alignment: Alignment.center,
//                 padding: EdgeInsets.all(2),
//                 decoration: ShapeDecoration(
//                   shape: CircleBorder(
//                       side: BorderSide(color: AColors.orangePrimary, width: 1)),
//                   color: AColors.BgLight,
//                 ),
//                 child: Icon(
//                   ArreIconsV2.tick_outline,
//                   size: 16,
//                   color: color,
//                 ),
//               ),
//             ),
//           ]
//         ],
//       ),
//     );
//   }
// }
