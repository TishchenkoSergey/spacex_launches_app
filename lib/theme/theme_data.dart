import 'package:flutter/material.dart';

import 'theme_config.dart';

/// Creates a ThemeData object for the app based on the given ThemeConfig
ThemeData createAppTheme(ThemeConfig config) {
  /// Define the app's text styles using the font and colors from the ThemeConfig
  final textTheme = TextTheme(
    titleLarge: TextStyle(
      fontFamily: config.fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: config.onPrimary,
    ),
    titleMedium: TextStyle(
      fontFamily: config.fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: config.onPrimary,
    ),
    labelMedium: TextStyle(
      fontFamily: config.fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: config.onSurface,
    ),
    labelSmall: TextStyle(
      fontFamily: config.fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: config.secondaryContainer,
    ),
  );

  /// Return the complete ThemeData object using Material3 and the given color scheme
  return ThemeData(
    useMaterial3: true,
    fontFamily: config.fontFamily,
    colorScheme: ColorScheme.light(
      primary: config.primary,
      onPrimary: config.onPrimary,
      secondary: config.secondary,
      secondaryContainer: config.secondaryContainer,
      error: config.error,
      onSurface: config.onSurface,
    ),
    /// AppBar theme using primary color and centered title
    appBarTheme: AppBarTheme(
      backgroundColor: config.primary,
      centerTitle: true,
      scrolledUnderElevation: 0,
    ),
    /// Progress indicator theme using onSurface color
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: config.onSurface,
    ),
    /// Apply the defined text theme
    textTheme: textTheme,
  );
}
