import 'package:flutter/material.dart';

class TextStyles {
  static const String _fontFamily = 'Inter';

  /// HEADING
  static TextStyle h1(
    BuildContext context, {
    Color color = Colors.black,
    double? fontSize = 20,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        fontFamily: _fontFamily,
        color: color,
      );

  /// SUBHEADING
  static TextStyle sH1(BuildContext context, {Color color = Colors.black}) =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle sH2(
    BuildContext context, {
    Color color = Colors.black,
    double? fontSize = 16,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle sH3(
    BuildContext context, {
    Color color = const Color(0xFF75DAC7),
  }) =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle sH4(BuildContext context, {Color color = Colors.black}) =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w100,
        fontFamily: _fontFamily,
        color: color,
      );

  /// TEXT BODY
  static TextStyle tB1(BuildContext context, {Color color = Colors.black}) =>
      TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle tB2(BuildContext context, {Color color = Colors.black}) =>
      TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle tB3(
    BuildContext context, {
    Color color = Colors.black,
    FontWeight? fontWeight = FontWeight.w600,
  }) =>
      TextStyle(
        fontSize: 14,
        fontWeight: fontWeight,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle tB4(BuildContext context, {Color color = Colors.black}) =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle tB5(
    BuildContext context, {
    Color color = const Color(0x0fffffff),
  }) =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle tB6(
    BuildContext context, {
    Color color = const Color(0xFF75DAC7),
  }) =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: _fontFamily,
        color: color,
      );

  /// CAPTIONS
  static TextStyle c1(BuildContext context, {Color color = Colors.black}) =>
      TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: _fontFamily,
        color: color,
      );

  /// BUTTONS
  static TextStyle b1(
    BuildContext context, {
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.bold,
  }) =>
      TextStyle(
        fontSize: 16,
        fontWeight: fontWeight,
        fontFamily: _fontFamily,
        color: color,
      );

  static TextStyle b2(BuildContext context, {Color color = Colors.white}) =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: _fontFamily,
        color: color,
      );

  /// INPUT
  static TextStyle input(
    BuildContext context, {
    Color color = const Color(0xFFB8B8B8),
  }) =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        fontFamily: _fontFamily,
        color: color,
      );
}
