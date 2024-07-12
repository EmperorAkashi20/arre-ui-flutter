import 'package:arre_frontend_flutter/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF232C36),
        centerTitle: false,
        titleSpacing: 0,
        titleTextStyle: ATextStyles.appBarTitle(
          Colors.white,
        ),
      ),
      cupertinoOverrideTheme:
          CupertinoThemeData(primaryColor: AColors.tealPrimary),
      scaffoldBackgroundColor: Color(0xFF171E26),
      primaryColor: AColors.tealPrimary,
      canvasColor: AColors.BgLight,
      cardColor: AColors.BgLight,
      dividerColor: AColors.white.withOpacity(0.5),
      shadowColor: AColors.BgLight,
      hintColor: AColors.textLight,
      primaryColorLight: AColors.tealStroke,
      // for gradient of bottom audio slide bar
      focusColor: AColors.BgLight,
      //for circlebar activepages 1,2,3 in auidobyte
      highlightColor: AColors.BgLight,
      disabledColor: AColors.tealStroke,
      //color for light green to dark green
      indicatorColor: AColors.tealPrimary,
      hoverColor: Colors.transparent,
      dialogBackgroundColor: AColors.BgStroke,
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AColors.greyDark;
            }
            return AColors.tealPrimary;
          }),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AColors.BgLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
          ),
        ),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: AColors.BgDark),
      colorScheme: ColorScheme.dark(
        primary: AColors.tealPrimary,
        onPrimary: AColors.white,
      ),
    );
  }

  static ThemeData buildFormScreenTheme(BuildContext context) {
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
}

ThemeData getOnboardingTheme(BuildContext context) {
  return Theme.of(context).copyWith(
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 2,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0x4DA2E1D9)),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0x4DA2E1D9)),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0x4DA2E1D9)),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0x4DA2E1D9)),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0x4DA2E1D9)),
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12),
      filled: true,
      fillColor: Color(0xFF232C36),
    ),
  );
}
