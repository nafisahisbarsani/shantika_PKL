import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  //black shades
  static const Color black500 = Color(0xFF000000);
  static const Color black400 = Color(0xFF4B5563);
  static const Color black300 = Color(0xFFBCBCBC);
  static const Color black200 = Color(0xFFE8E8E8);
  static const Color black100 = Color(0xFFF3F3F3);

  //primary color
  static const Color primary1 = Color(0xFF0C44FF);
  static const Color primary5 = Color(0xFF3D46A9);
  static const Color primary4 = Color(0xFF323994);
  static const Color primary3 = Color(0xFF2A3088);
  static const Color primary2 = Color(0xFF292860);
  static const Color primary6 = Color(0xFF4176E3);

  //additional color
  static const Color background = Color(0xFFFFFFFF);
  static const Color rate = Color(0xFFF8BA2C);
  static const Color danger = Color(0xFFFF3800);
  static const Color success = Color(0xFF8FC907);
  static const Color text = Color(0xFF6B7280);
  static const Color facebook = Color(0xFF395185);
  static const Color seat = Color(0xFFCCE9FF);


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
  static const double iconS = 16.0;
  static const double iconM = 20.0;
  static const double iconL = 24.0;
  static const double iconXL = 30.0;
  static const double iconXXL = 35.0;
  static const double iconXXXL = 50.0;

  //Text
  static TextStyle heading1({required Color color}) => GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: color,
  );

  static TextStyle heading6({required Color color}) => GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: color,
  );

  static TextStyle heading2({required Color color}) => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: color,
  );

  static TextStyle heading3({required Color color}) => GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: color,
  );

  static TextStyle heading4({required Color color}) => GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: color,
  );

  static TextStyle heading5({required Color color}) => GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: color,
  );

  static TextStyle caption1({required Color color}) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: color,
  );

  static TextStyle caption2({required Color color}) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: color,
  );
  static TextStyle caption3({required Color color}) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: color,
  );

  static TextStyle paragraph1({required Color color}) => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: color,
  );

  static TextStyle paragraph2({required Color color}) => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: color,
  );
  static TextStyle paragraph3({required Color color}) => GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: color,
  );
  static TextStyle menu1({required Color color}) => GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: color,
  );
  static TextStyle menu2({required Color color}) => GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: color,
  );
  static TextStyle divider({required Color color}) => GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: color,
  );
}
