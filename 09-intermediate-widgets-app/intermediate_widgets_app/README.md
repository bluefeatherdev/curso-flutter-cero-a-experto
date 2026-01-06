# Intermediate Widgets App

An advanced Flutter application extending basic widget concepts with interactive UI controls, progress indicators, snackbars, dialogs, animated containers, infinite scrolling, and onboarding tutorial screens. This example demonstrates intermediate Material Design 3 patterns with stateful widgets and dynamic user interactions.

## Structure

The project builds upon modular architecture with enhanced screens showcasing stateful behavior and advanced widget composition:

- `lib/main.dart` - Application entry point configuring `MaterialApp.router` with `GoRouter` and custom theme for intermediate widgets demonstration

- `lib/core/routers/app_router.dart` - Extended routing configuration including progress, snackbars/dialogs, animated container, UI controls, app tutorial, and infinite scroll routes

- `lib/ui/themes/app_theme.dart` - Theme configuration class implementing Material 3 design system with customizable color schemes

- `lib/ui/screens.dart` - Barrel file exporting all screen widgets including new intermediate screens for simplified imports

- `lib/ui/menu/menu_items.dart` - Extended menu structure with eight navigation items covering buttons, cards, progress indicators, snackbars/dialogs, animated containers, UI controls, app tutorial, and infinite scroll

- `lib/ui/screens/home/home_screen.dart` - Main navigation screen rendering `ListView` of menu items with dynamic routing to all available screens

- `lib/ui/screens/buttons/buttons_screen.dart` - Comprehensive button showcase from basic widgets app foundation

- `lib/ui/screens/cards/cards_screen.dart` - Card variations demonstrating elevation, borders, fills, and image integration

- `lib/ui/screens/progress/progress_screen.dart` - Progress indicator examples including indeterminate `CircularProgressIndicator` and controlled progress using `StreamBuilder` with periodic updates

- `lib/ui/screens/snackbars_dialogs/snackbars_dialogs_screen.dart` - Interactive snackbar and dialog demonstrations using `ScaffoldMessenger`, custom snackbars with actions, `AboutDialog`, and `AlertDialog` with multiple action buttons

- `lib/ui/screens/ui_controls/ui_controls_screen.dart` - Interactive form controls including `SwitchListTile`, `ExpansionTile` with `RadioListTile` group, and multiple `CheckboxListTile` widgets with stateful updates

- `lib/ui/screens/app_tutorial/app_tutorial_screen.dart` - Onboarding tutorial using `PageView` with image assets, custom slide widgets, progress detection, and animated navigation buttons using `animate_do` package

- `lib/ui/screens/animated/animated_screen.dart` - Dynamic animated container with randomized shape generation using `Random`, smooth transitions with `AnimatedContainer`, and `elasticOut` curve animations

- `lib/ui/screens/infinite_scroll/infinite_scroll_screen.dart` - Infinite scrolling implementation with `ScrollController`, pull-to-refresh using `RefreshIndicator`, dynamic image loading from picsum.photos, and animated scroll positioning

- `assets/images/` - Directory containing tutorial onboarding images for app tutorial screen

## Key Points

The `ProgressScreen` demonstrates both indeterminate and controlled progress indicators. The controlled progress uses `StreamBuilder` with `Stream.periodic` to emit progress values from 0 to 100 at regular intervals, showcasing reactive programming patterns with Flutter streams.

The `SnackbarsDialogsScreen` implements custom snackbar functionality through `ScaffoldMessenger.of(context).showSnackBar` with configured duration, action buttons, and dismissal behavior. The `AboutDialog` demonstrates licensing information display, while `AlertDialog` showcases modal dialogs with multiple action buttons and navigation closure.

The `UiControlsScreen` implements stateful form controls with `StatefulWidget` and `setState` for reactive updates. The `SwitchListTile` toggles boolean state, `ExpansionTile` contains `RadioListTile` group for single selection, and multiple `CheckboxListTile` widgets manage independent boolean states for meal preferences.

The `AppTutorialScreen` uses `PageView.builder` with `PageController` for swipeable tutorial slides. The implementation detects final page reach through `addListener` on controller and conditionally renders either Exit or Get Started buttons. The `animate_do` package provides `FadeInRight` animation for smooth button transitions.

The `InfiniteScrollScreen` implements infinite scrolling through `ScrollController` listener detecting scroll position threshold. When user scrolls near bottom, `loadNextPage` method appends new images to list. The `RefreshIndicator` enables pull-to-refresh functionality, clearing and reloading the image list with simulated network delay.

The `AnimatedScreen` demonstrates `AnimatedContainer` with dynamic property changes. The `Random` class generates randomized width, height, borderRadius, and color values. When `changeShape` is triggered, `AnimatedContainer` smoothly transitions between states using `elasticOut` curve over 400 milliseconds.

The routing architecture extends `GoRouter` configuration with comprehensive route definitions for all intermediate screens. Each route uses path-based navigation with corresponding screen name constants for type-safe routing throughout the application.

The menu system expands with eight items covering intermediate widget concepts. Each `MenuItems` entry includes descriptive title, subtitle, navigation link, and icon from Material Icons set, providing clear navigation structure for users.

## Example Workflow


Launch application to display `HomeScreen` with expanded menu containing eight intermediate widget examples.


Select Progress menu item to view indeterminate circular progress indicator and controlled progress with percentage display.


Observe `StreamBuilder` updating progress value from 0 to 100 with smooth animation transitions.


Navigate back and select Snackbars and Dialogs to explore notification patterns.


Tap Show Snackbar button to display custom snackbar with action button and automatic dismissal.


Open About Dialog to view licensing information with Material 3 styling.


Trigger Alert Dialog to demonstrate modal confirmation with Cancel and Accept actions.


Navigate to UI Controls to interact with stateful form elements.


Toggle developer mode switch and observe state change with visual feedback.


Expand transportation section and select radio option to demonstrate single selection behavior.


Check multiple meal preference options to showcase independent checkbox state management.


Navigate to App Tutorial to experience onboarding flow with image slides.


Swipe through tutorial pages to view different onboarding content with titles and captions.


Reach final slide to trigger Get Started button animation using `animate_do` package.


Tap Get Started or Exit button to complete tutorial and return to home screen.


Navigate to Infinite Scroll to experience dynamic content loading.


Scroll down to trigger automatic loading of additional images from picsum.photos API.


Pull down at top of list to refresh and reload images with visual loading indicator.


Tap floating action button with animated icon to smoothly scroll to bottom of list.


Navigate to Animated Container to interact with dynamic shape animations.


Tap floating action button to trigger random shape generation with smooth property transitions.


Observe width, height, border radius, and color animating simultaneously with elastic curve.


Repeat shape changes to experience varied animation results with different random values.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
