import 'package:drop/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _lightFillColor = Colors.black;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      iconTheme: IconThemeData(color: AppColors.white),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      focusColor: AppColors.primaryColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: AppColors.primaryColor,
    secondary: AppColors.accentPrimaryColor,
    background: Colors.white,
    surface: Color(0xFFFAFBFB),
    onBackground: AppColors.white100,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const _superBold = FontWeight.w900;
  static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;
  static const _light = FontWeight.w300;

  static final TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_96,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displayMedium: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_60,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    displaySmall: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_48,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineLarge: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_34,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_24,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_20,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_16,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_14,
      color: AppColors.primaryText,
      fontWeight: _bold,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_16,
      color: AppColors.primaryText,
      fontWeight: _regular,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_14,
      color: AppColors.primaryText,
      fontWeight: _light,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      fontFamily: StringConst.FONT_FAMILY,
      fontSize: Sizes.TEXT_SIZE_14,
      color: AppColors.primaryText,
      fontStyle: FontStyle.normal,
      fontWeight: _regular,
    ),
  );
}
