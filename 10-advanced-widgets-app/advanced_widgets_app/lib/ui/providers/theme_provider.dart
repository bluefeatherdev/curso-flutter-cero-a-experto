// Flutter Widgets App - Advanced Widgets App
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:advanced_widgets_app/ui/themes/app_theme.dart';

/// An immutable color list provider
final colorListProvider = Provider((ref) => colorList);

/// A simple boolean provider for dark mode
final isDarkModeProvider = StateProvider((ref) => false);

/// A simple integer provider for the selected color
final selectedColorProvider = StateProvider((ref) => 0);

/// A state notifier provider that manages the app theme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

/// A state notifier class responsible for handling theme changes
class ThemeNotifier extends StateNotifier<AppTheme> {
  /// Initializes the theme with default values
  ThemeNotifier() : super(AppTheme());

  /// Toggles between light and dark mode
  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  /// Changes the selected color index in the theme
  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
