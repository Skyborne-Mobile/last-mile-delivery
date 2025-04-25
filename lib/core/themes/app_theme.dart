import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  // Color palette
  static const Color _primary = Color(0xFFB28DFF);
  static const Color _primaryContainer = Color(0xFFF1E7FF);
  static const Color _secondary = Color(0xFF9C77FF);
  static const Color _secondaryContainer = Color(0xFFE8D8FF);
  static const Color _tertiary = Color(0xFFBA9DFF);
  static const Color _tertiaryContainer = Color(0xFFEDE4FF);

  static const Color _error = Colors.red;
  static const Color _scaffoldLight = Color.fromARGB(245, 249, 249, 251);
  static const Color _scaffoldDark = Color(0xFF121212);

  static ThemeData light = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: _primary,
      primaryContainer: _primaryContainer,
      secondary: _secondary,
      secondaryContainer: _secondaryContainer,
      tertiary: _tertiary,
      tertiaryContainer: _tertiaryContainer,
      error: _error,
    ),
    useMaterial3: true,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      blendOnColors: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  ).copyWith(
    scaffoldBackgroundColor: _scaffoldLight,
  );

  static ThemeData dark = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: _primary,
      primaryContainer: _primaryContainer,
      secondary: _secondary,
      secondaryContainer: _secondaryContainer,
      tertiary: _tertiary,
      tertiaryContainer: _tertiaryContainer,
      error: _error,
    ),
    useMaterial3: true,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      blendOnColors: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  ).copyWith(
    scaffoldBackgroundColor: _scaffoldDark,
  );
}
