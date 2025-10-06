import 'dart:ui';
import 'package:flutter/material.dart';


class AppStyle {
  //black shades
  static const Color black500 = Color(0xFF000000);
  static const Color black400 = Color(0xFF797979);
  static const Color black300 = Color(0xFFBCBCBC);
  static const Color black200 = Color(0xFFE8E8E8);
  static const Color black100 = Color(0xFFF3F3F3);

  //primary color
  static const Color primary1 = Color(0xFF0C44FF);
  static const Color primary2 = Color(0xFF292860);

  //additional color
  static const Color background = Color(0xFFFFFFFF);

  //padding & margin
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 12.0;
  static const double paddingL = 16.0;
  static const double paddingXL = 20.0;
  static const double paddingXXL = 30.0;
  static const double paddingXXXL = 35.0;

  //Border Radius
  static const double radiusXXXS = 1.5;
  static const double radiusXXS = 2.0;
  static const double radiusXS = 5.0;
  static const double radiusS = 10.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 20.0;
  static const double radiusXXL = 25.0;
  static const double radiusXXXL = 40.0;

  //Spacing
  static const double spaceXXS = 1.0;
  static const double spaceXS = 5.0;
  static const double spaceS = 10.0;
  static const double spaceM = 15.0;
  static const double spaceL = 20.0;
  static const double spaceXL = 30.0;
  static const double spaceXXL = 50.0;
  static const double spaceXXXL = 60.0;
  static const double spaceXXXXL = 70.0;

  //Icon Sizes
  static const double iconS = 15.0;
  static const double iconM = 20.0;
  static const double iconL = 24.0;
  static const double iconXL = 30.0;
  static const double iconXXL = 35.0;
  static const double iconXXXL = 50.0;

    //Text
    static TextStyle heading1({required Color color}) => TextStyle(
      fontSize: 20,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      color: color,
    );
    static TextStyle heading2({required Color color}) => TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      color: color,
    );
    static TextStyle heading3({required Color color}) => TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.normal,
      color: color,
    );
    static TextStyle heading4({required Color color}) => TextStyle(
      fontSize: 18,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.normal,
      color: color,
    );
    static TextStyle heading5({required Color color}) => TextStyle(
      fontSize: 18,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      color: color,
    );
    static TextStyle caption1({required Color color}) => TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      color: color,
    );
    static TextStyle caption2({required Color color}) => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
      color: color,
    );
    static TextStyle paragraph1({required Color color}) => TextStyle(
      fontSize: 12,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      color: color,
    );
    static TextStyle paragraph2({required Color color}) => TextStyle(
      fontSize: 12,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
      color: color,
    );
}
