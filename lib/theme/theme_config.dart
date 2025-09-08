import 'dart:convert';

import 'package:flutter/services.dart';

/// Class representing a theme configuration with colors and font
class ThemeConfig {
  /// Constructor for ThemeConfig
  ThemeConfig({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.secondaryContainer,
    required this.error,
    required this.onSurface,
    required this.fontFamily,
  });

  /// Factory constructor to create a ThemeConfig from a JSON map
  factory ThemeConfig.fromJson(Map<String, dynamic> json) {
    final colors = json['lightColorSchemeOverride'] as Map<String, dynamic>;

    /// Helper function to convert hex string to Color
    Color parseColor(String hex) => Color(int.parse(hex.replaceFirst('#', '0xff')));

    return ThemeConfig(
      primary: parseColor(colors['primary'] as String),
      onPrimary: parseColor(colors['onPrimary'] as String),
      secondary: parseColor(colors['secondary'] as String),
      secondaryContainer: parseColor(colors['secondaryContainer'] as String),
      error: parseColor(colors['error'] as String),
      onSurface: parseColor(colors['onSurface'] as String),
      fontFamily: json['fontFamily'] as String,
    );
  }

  /// Primary color of the theme
  final Color primary;

  /// Color for content displayed on primary color
  final Color onPrimary;

  /// Secondary color of the theme
  final Color secondary;

  /// Color for secondary container elements
  final Color secondaryContainer;

  /// Error color
  final Color error;

  /// Color for text and elements on surfaces
  final Color onSurface;

  /// Font family for the theme
  final String fontFamily;

  /// Load theme configuration from a JSON asset file
  static Future<ThemeConfig> loadFromAsset(String path) async {
    final data = await rootBundle.loadString(path);
    final jsonMap = json.decode(data);
    return ThemeConfig.fromJson(jsonMap as Map<String, dynamic>);
  }
}
