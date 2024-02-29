import 'package:flutter/material.dart';

class ThemeColors {
  /// Primary Collors

  // static const lightGreenRGB = Color.fromRGBO(17, 202, 86, 1);
  static const greenRGB = Color.fromRGBO(232, 247, 243, 0.4);
  static const lightGreenRGB = Color.fromRGBO(232, 247, 243, 1);
  static const blue = Color(0xFF2196F3);
  static const lightBlue = Color(0xFF72BCF8);
  static const green = Color(0xFF017663);
  static const orange = Color(0xFFF8BC76);
  static const orangeRGB = Color.fromRGBO(253, 176, 72, 0.16);
  static const darkBlue = Color(0xFF1A74C3);
  static const purple = Color(0xFFAF52DE);
  static const redShadow = Color(0xFFEB8888);
  static const grey = Color(0xFFE2E2E2);
  static const blueShadow = Color.fromRGBO(114, 188, 248, 0.15);
  static const greenShadow = Color(0xFF57C068);
  static const whiteSmooth = Color.fromRGBO(60, 60, 67, 0.6);
  static const whiteDivider = Color.fromRGBO(198, 198, 200, 1);
  static const blueTransfarent = Color(0xFFE6F1FA);
  static const whiteGrey = Color(0xFFE8F7F3);
  static const darkGreen = Color(0xff6cb8ac33);
  static const textGreen = Color(0XFF11CA56);
  static const borderColor = Color(0XFFBBE5DC);
  static const borderGreyRGB = Color.fromRGBO(0, 0, 0, 0.12);
  static const darkgrey = Color(0XFFF5F5F5);


  // static const yellowRGB = Color.fromRGBO(250, 188, 19, 1);

  static const redColor = Color(0xFFCF3737);
  static MaterialColor primary = getPrimaryMaterialColor();

  /// Botton Colors
  static const greenNormal = Color(0xFF089716);
  static const greenPressed = Color(0xFF067E12);
  static const greyShadow = Color(0xFF8E8E93);
  static const whiteNormal = Color(0xFFF2F2F7);
  static const whiteShadow = Color(0xFFFAFAFA);
  static const blackPressed = Color(0XFF000000);
  static const redRGB = Color.fromRGBO(242, 48, 48, 1);
  static const darkRedRGB = Color.fromRGBO(207, 55, 55, 1);
  static const yellowRGB = Color.fromRGBO(242, 184, 115, 1);
  static MaterialColor neutral = getNeutralColor();
  static const whiteRGB = Color.fromRGBO(249, 249, 249, 0.94);
  static const textRedColor = Color(0XFFF23030);
  static const lightGrey = Color(0XFFE8F7F3);
  static BoxShadow bottomShadow = BoxShadow(
    color: Colors.grey.shade200,
    blurRadius: 16,
    spreadRadius: 1,
    offset: const Offset(0, 0),
  );
  static const darkGrey = Color(0XFFEBEBEB);
}

MaterialColor getPrimaryMaterialColor() {
  Map<int, Color> color = {
    50: const Color(0xffE8F7F3),
    100: const Color(0xffBBE5DC),
    200: const Color(0xff8ED4C6),
    300: const Color(0xff61C1B0),
    400: const Color(0xff2EAD9A),
    500: const Color(0xff009886),
    600: const Color(0xff008371),
    700: const Color(0xff006E5E),
    800: const Color(0xff00594B),
    900: const Color(0xff004439)
  };
  return MaterialColor(0xff017663, color);
}

MaterialColor getNeutralColor() {
  Map<int, Color> color = {
    100: const Color(0xffF2F2F3),
    200: const Color(0xffE5E4E7),
    300: const Color(0xffD3D2D7),
    400: const Color(0xffBEBCC4),
    500: const Color(0xff817E8C),
    600: const Color(0xff5D586C),
    700: const Color(0xff3E3851),
    800: const Color(0xff221A39),
  };
  return MaterialColor(0xffffffff, color);
}
