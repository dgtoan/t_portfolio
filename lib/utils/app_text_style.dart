import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_portfolio/utils/app_color.dart';

abstract class AppTextStyle {
  AppTextStyle._();

  static TextStyle get displayLarge => _textStyle(
    Colors.white,
    48.0,
    FontWeight.w700
  );

  static TextStyle get displayLargePrimary => _textStyle(
    AppColor.primary,
    48.0,
    FontWeight.w700
  );

  static TextStyle _textStyle(
    Color color,
    double fontSize,
    FontWeight fontWeight
  ) {
    return TextStyle(
      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

}

