part of arre_styles;

abstract class ATextStyles {
  //Typography - System
  static TextStyle sys20Regular([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w400,
        fontSize: 20,
        height: 24 / 20,
        color: color,
      );

  static TextStyle sys20Bold([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        fontSize: 20,
        height: 24 / 20,
        letterSpacing: -0.91,
        color: color,
      );

  static TextStyle sys18Regular([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 21.6 / 18,
        color: color,
      );

  static TextStyle sys18Bold([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        fontSize: 18,
        height: 21.6 / 18,
        color: color,
      );

  static TextStyle sys16Regular([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 19.2 / 16,
        color: color,
      );

  static TextStyle sys16Bold([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        fontSize: 16,
        height: 19.2 / 16,
        color: color,
      );

  static TextStyle sys14Regular([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 16.8 / 14,
        color: color,
      );

  static TextStyle sys14Bold([Color? color, double height = 16.8 / 14]) =>
      TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        fontSize: 14,
        height: height,
        color: color,
      );

  static TextStyle sys12Regular([Color? color, double height = 14.4 / 12]) =>
      TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: height,
        color: color,
      );

  static TextStyle sys12Bold([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        fontSize: 12,
        height: 14.4 / 12,
        color: color,
      );

  //Typography - user
  static TextStyle user28Bold([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 28,
      height: 32.98 / 28,
      fontWeight: FontWeight.w500);

  static TextStyle user20Regular([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 20,
      height: 22.98 / 20,
      fontWeight: FontWeight.w400);

  static TextStyle user20Bold([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 20,
      height: 22.98 / 20,
      fontWeight: FontWeight.w700);

  static TextStyle user18Regular([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 18,
      height: 20.68 / 18,
      fontWeight: FontWeight.w400);

  static TextStyle user16Regular([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 16,
      height: 20 / 16,
      fontWeight: FontWeight.w400);

  static TextStyle user14Regular([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 14,
      // height: 18.2 / 14,
      fontWeight: FontWeight.w400);

  static TextStyle user14Bold([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 14,
      height: 16.09 / 14,
      fontWeight: FontWeight.w700);

  static TextStyle user12Regular([Color? color, double height = 13.79 / 12]) =>
      TextStyle(
        fontFamily: 'ubuntu',
        color: color,
        fontSize: 12,
        height: height,
        fontWeight: FontWeight.w400,
      );

  static TextStyle user12Bold([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 12,
      height: 13.79 / 12,
      fontWeight: FontWeight.w700);

//Typography - Numerical
  static TextStyle num20Regular([Color? color]) => TextStyle(
      fontFamily: 'Ubuntu_Mono',
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.w400);

  static TextStyle num20Bold([Color? color]) => TextStyle(
      fontFamily: 'Ubuntu_Mono',
      color: color,
      fontSize: 20,
      height: 20 / 20,
      fontWeight: FontWeight.w700);

  static TextStyle num18Regular([Color? color]) => TextStyle(
      fontFamily: 'Ubuntu_Mono',
      color: color,
      fontSize: 18,
      height: 18 / 18,
      fontWeight: FontWeight.w400);

  static TextStyle num16Regular([Color? color]) => TextStyle(
      fontFamily: 'ubuntu',
      color: color,
      fontSize: 16,
      height: 16 / 16,
      fontWeight: FontWeight.w400);

  static TextStyle num14Regular([Color? color]) => TextStyle(
      fontFamily: 'Ubuntu_Mono',
      color: color,
      fontSize: 14,
      height: 14 / 14,
      fontWeight: FontWeight.w400);

  static TextStyle num14Bold([Color? color]) => TextStyle(
      fontFamily: 'Ubuntu_Mono',
      color: color,
      fontSize: 14,
      height: 14 / 14,
      fontWeight: FontWeight.w700);

  static TextStyle num12Regular([Color? color]) => TextStyle(
      fontFamily: 'Ubuntu_Mono',
      color: color,
      fontSize: 12,
      height: 12 / 12,
      fontWeight: FontWeight.w400);

  static TextStyle num12Bold([Color? color]) => TextStyle(
      fontFamily: 'Ubuntu_Mono',
      color: color,
      fontSize: 12,
      height: 12 / 12,
      fontWeight: FontWeight.w700);

  //others - not in figma - typography
  static TextStyle sys14BoldWide([Color? color]) => TextStyle(
        // fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: color,
        letterSpacing: 0.56, //4% of fontSize
      );

  static TextStyle sys24Bold([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: color,
      );

  static TextStyle sys14Medium([Color? color]) => TextStyle(
        // fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: color,
      );

  static TextStyle sys16Medium([Color? color]) => TextStyle(
        // fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: color,
      );

  //styleName: System/12/Regular;
  // font-family: Acumin Pro;
  // font-size: 12px;
  // font-weight: 400;
  // line-height: 14px;
  // letter-spacing: 0px;
  // text-align: center;

  static TextStyle sys10Bold([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: 10,
        height: 15 / 10,
      );

  static TextStyle sys10Regular([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        color: color,
        fontSize: 10,
        height: 15 / 10,
      );

  static TextStyle appBarTitle([Color? color]) => TextStyle(
        color: color,
        fontFamily: "Acumin Pro",
        fontSize: 15,
        fontWeight: FontWeight.w700,
      );

  static TextStyle requestForMoreTextExpandYourTribeStyle([Color? color]) =>
      TextStyle(
        color: color,
        fontFamily: "Acumin Pro",
        fontSize: 14,
        letterSpacing: -0.1,
        fontWeight: FontWeight.w700,
      );

  static TextStyle invitesLeftRichText3([Color? color]) => TextStyle(
        color: color,
        fontFamily: "Acumin Pro",
        fontSize: 14,
        height: 1.3,
        fontWeight: FontWeight.w400,
      );

  static TextStyle expandYourTribeLinkTextStyle([Color? color]) => TextStyle(
        color: color,
        fontFamily: "Acumin Pro",
        fontSize: 15,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w700,
      );

  static TextStyle expandYourTribeUsersInvitedTextStyle([Color? color]) =>
      TextStyle(
        fontFamily: "Acumin Pro",
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.24,
      );

  static TextStyle expandYourTribePrettyEmpty([Color? color]) => TextStyle(
        fontFamily: "Acumin Pro",
        color: color,
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24,
      );

  static TextStyle sys12Mini([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        color: color,
        fontSize: 12,
        height: 14.4 / 12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle sys14PrimaryBold([Color? color]) => TextStyle(
        fontFamily: "Acumin Pro",
        fontWeight: FontWeight.w700,
        fontSize: 14,
        letterSpacing: -0.47,
        color: color,
      );

  static TextStyle buttons([Color? color]) => TextStyle(
        fontFamily: 'Acumin Pro',
        color: color,
        fontSize: 14,
        height: 16.8 / 13,
        fontWeight: FontWeight.w700,
      );

  static TextStyle systemPrimaryNormal([Color? color]) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: color,
      );

  static TextStyle hind14Regular([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 14,
        height: 22.41 / 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle hind14Medium([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 14,
        height: 14 / 14,
        fontWeight: FontWeight.w500,
      );

  static TextStyle hind14Bold([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 14,
        height: 22.41 / 14,
        fontWeight: FontWeight.w700,
      );

  static TextStyle hind16Bold([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  static TextStyle hind16SemiBold([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 16,
        height: 19.2 / 16,
        fontWeight: FontWeight.w600,
      );

  static TextStyle hind20Bold([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 20,
        height: 1,
        fontWeight: FontWeight.w700,
      );

  static TextStyle hind20SemiBold([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle hind20Medium([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 20,
        height: 20 / 20,
        fontWeight: FontWeight.w500,
      );

  static TextStyle hind24Bold([Color? color]) => TextStyle(
        fontFamily: 'Hind',
        color: color,
        fontSize: 24,
        height: 24 / 24,
        fontWeight: FontWeight.w700,
      );
}
