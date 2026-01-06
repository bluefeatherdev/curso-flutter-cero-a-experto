// Yes, No, Maybe Provider App
import 'package:flutter/material.dart';

/// Custom primary color used as the base for theme generation.
const Color _customColor = Color(0xFF49149F);

/// Predefined list of available color themes for the application.
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

/// Provides application theming based on a selected color index.
class AppTheme {
  final int selectedColor;

  /// Creates an AppTheme instance ensuring the selected color index is within valid bounds.
  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
        'Colors must be between 0 and ${_colorThemes.length}',
      );

  /// Generates a ThemeData object using Material 3 and the selected color scheme.
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark
    );
  }
}
