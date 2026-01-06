# Advanced Widgets App

A sophisticated Flutter application demonstrating advanced state management with Riverpod, dynamic theming with persistent color selection and dark mode toggle, enhanced navigation with NavigationDrawer, and comprehensive widget patterns. This example showcases production-ready architecture with provider-based state management and reactive UI updates.

## Structure

The project implements advanced architectural patterns with Riverpod providers and enhanced navigation components:

- `lib/main.dart` - Application entry point wrapping `MainApp` with `ProviderScope` for Riverpod state management and configuring `MaterialApp.router` with dynamic theme from `themeNotifierProvider`

- `lib/core/routers/app_router.dart` - Comprehensive routing configuration with GoRouter including all screens from intermediate app plus Riverpod counter and theme changer routes

- `lib/ui/themes/app_theme.dart` - Theme configuration class implementing Material 3 design system with customizable color schemes and dark mode support

- `lib/ui/providers/counter_provider.dart` - Simple `StateProvider<int>` demonstrating basic Riverpod state management for counter functionality

- `lib/ui/providers/theme_provider.dart` - Advanced theme management with multiple providers including `colorListProvider` for immutable color list, `isDarkModeProvider` for dark mode toggle, `selectedColorProvider` for color index selection, and `themeNotifierProvider` with `ThemeNotifier` class managing theme state changes

- `lib/ui/screens.dart` - Barrel file exporting all screen widgets including advanced screens for simplified imports across application

- `lib/ui/menu/menu_items.dart` - Extended menu structure with ten navigation items covering buttons, cards, progress, snackbars/dialogs, animated containers, UI controls, app tutorial, infinite scroll, Riverpod counter, and theme changer

- `lib/ui/widgets/side_menu.dart` - Custom `NavigationDrawer` implementation with grouped sections for Main and More Options, dynamic destination rendering from `appMenuItems`, notch detection for adaptive padding, and integrated GoRouter navigation with drawer closing behavior

- `lib/ui/screens/home/home_screen.dart` - Enhanced main navigation screen with integrated `SideMenu` drawer, `ListView` rendering menu items, and `_CustomListTile` widgets with GoRouter navigation and Material 3 styling

- `lib/ui/screens/buttons/buttons_screen.dart` - Comprehensive button showcase from previous iterations

- `lib/ui/screens/cards/cards_screen.dart` - Card variations demonstrating elevation, borders, fills, and image integration

- `lib/ui/screens/progress/progress_screen.dart` - Progress indicators with indeterminate and controlled progress using `StreamBuilder`

- `lib/ui/screens/snackbars_dialogs/snackbars_dialogs_screen.dart` - Interactive snackbar and dialog demonstrations with custom implementations

- `lib/ui/screens/ui_controls/ui_controls_screen.dart` - Interactive form controls with stateful switches, radio groups, and checkboxes

- `lib/ui/screens/app_tutorial/app_tutorial_screen.dart` - Onboarding tutorial with `PageView`, image assets, and animated navigation

- `lib/ui/screens/animated/animated_screen.dart` - Dynamic animated container with randomized shape generation

- `lib/ui/screens/infinite_scroll/infinite_scroll_screen.dart` - Infinite scrolling with `ScrollController`, pull-to-refresh, and dynamic image loading

- `lib/ui/screens/riverpod_counter/riverpod_counter_screen.dart` - `ConsumerWidget` demonstrating Riverpod integration with `counterProvider` for reactive integer state management, `isDarkModeProvider` for theme toggle via AppBar action, Material 3 text styles for counter display, and `FloatingActionButton` incrementing counter state

- `lib/ui/screens/theme_changer/theme_changer_screen.dart` - Advanced theme customization screen as `ConsumerWidget` integrating `themeNotifierProvider` for dark mode toggle and color selection, `_ThemeChangerView` with `ListView.builder` rendering color options dynamically, and `RadioListTile` group using non-deprecated `toARGB32` API for color handling

- `assets/images/` - Directory containing tutorial onboarding images for app tutorial screen

## Key Points

The Riverpod integration wraps the entire application with `ProviderScope` in `main.dart`, enabling dependency injection and state management throughout the widget tree. The `ConsumerWidget` base class provides access to `WidgetRef` for reading and watching provider state changes with automatic UI rebuilds.

The `ThemeNotifier` class extends `Notifier<AppTheme>` to manage complex theme state including color selection and dark mode toggling. The `themeNotifierProvider` exposes methods for `toggleDarkMode` and `changeColorIndex`, triggering reactive theme updates throughout the application without manual state propagation.

The `RiverpodCounterScreen` demonstrates basic Riverpod patterns with `counterProvider` as `StateProvider<int>`. The screen uses `ref.watch(counterProvider)` for reactive value display and `ref.read(counterProvider.notifier).state++` for state mutation through `FloatingActionButton` interaction.

The `ThemeChangerScreen` implements advanced theme customization with `RadioListTile` widgets bound to `selectedColorProvider`. The screen watches `themeNotifierProvider` for dark mode state and uses `ref.read(themeNotifierProvider.notifier).changeColorIndex(index)` to update selected color with automatic theme regeneration.

The `SideMenu` widget implements `NavigationDrawer` with grouped sections using visual dividers and section labels. The drawer dynamically generates `NavigationDrawerDestination` widgets from `appMenuItems` sublists, providing organized navigation structure with Main and More Options categories.

The navigation architecture uses `scaffoldKey` to programmatically close drawer after route selection. The `onDestinationSelected` callback combines GoRouter navigation with `Navigator.pop(context)` for smooth user experience preventing drawer state issues after navigation.

The theme provider architecture separates concerns with `colorListProvider` for immutable color data, `selectedColorProvider` for user preference, `isDarkModeProvider` for mode state, and `themeNotifierProvider` combining all state into cohesive theme management system with single source of truth.

The drawer implementation includes notch detection using `MediaQuery.of(context).viewPadding.top` to adjust padding adaptively for devices with display cutouts, ensuring consistent visual presentation across different device configurations.

The `AppTheme` class integrates with Riverpod providers to generate `ThemeData` dynamically based on selected color and dark mode state, demonstrating reactive theme switching without application restart or complex state management boilerplate.

## Example Workflow


Launch application wrapped with `ProviderScope` to initialize Riverpod state management and display `HomeScreen` with navigation drawer.


Tap menu icon in AppBar to open `SideMenu` with grouped navigation sections.


Navigate through Main section containing buttons, cards, progress, snackbars/dialogs, and animated container options.


Explore More Options section with UI controls, app tutorial, infinite scroll, Riverpod counter, and theme changer.


Select Riverpod Counter to view reactive state management demonstration.


Observe counter value displayed with Material 3 text styles reading from `counterProvider`.


Tap floating action button multiple times to increment counter with automatic UI updates.


Toggle dark mode from AppBar action icon to see theme change via `isDarkModeProvider`.


Navigate back and select Theme Changer to access advanced customization screen.


View list of color options rendered dynamically from `colorListProvider`.


Select different color radio option to trigger `changeColorIndex` method updating theme immediately.


Toggle dark mode switch in AppBar to observe theme mode change with selected color persistence.


Open navigation drawer to verify theme changes applied across all navigation components.


Navigate to various screens to confirm consistent theme application throughout application.


Select Buttons screen to view Material 3 button styles with applied color scheme.


Return to home and select Infinite Scroll to test theme consistency with dynamic content.


Open Cards screen to observe elevation and color variations with current theme.


Navigate to Progress screen to verify theme colors applied to progress indicators.


Access UI Controls to test theme integration with form widgets and interactive elements.


Open App Tutorial to view onboarding flow with consistent theme styling.


Return to Theme Changer to experiment with different color combinations.


Toggle dark mode multiple times to test smooth theme transitions without state loss.


Navigate through all screens using drawer to verify comprehensive theme integration.


Close drawer after navigation to confirm automatic drawer dismissal behavior.


Test theme persistence by switching between multiple screens and returning to theme changer.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
