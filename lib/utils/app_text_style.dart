import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  AppTextStyle._();

  static TextStyle get displayLarge => _textStyle().copyWith(
    fontSize: 57,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get displayMedium => _textStyle().copyWith(
    fontSize: 45,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get displaySmall => _textStyle().copyWith(
    fontSize: 36,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get headlineLarge => _textStyle().copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get headlineMedium => _textStyle().copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get headlineSmall => _textStyle().copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get titleLarge => _textStyle().copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get titleMedium => _textStyle().copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get titleSmall => _textStyle().copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get bodyLarge => _textStyle().copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get bodyMedium => _textStyle().copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get bodySmall => _textStyle().copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get labelLarge => _textStyle().copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get labelMedium => _textStyle().copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get labelSmall => _textStyle().copyWith(
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _textStyle() {
    return const TextStyle().copyWith(
      color: Colors.white,
      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    );
  }

}

