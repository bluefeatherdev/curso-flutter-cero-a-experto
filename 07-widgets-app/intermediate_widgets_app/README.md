# Intermediate Widgets App

A comprehensive Flutter application demonstrating fundamental Material Design 3 widgets and navigation patterns using GoRouter. This example showcases various button types, card variations, and proper screen routing architecture.

## Structure

The project follows a modular architecture separating core functionality, UI components, and theme configuration:

- `lib/main.dart` - Application entry point configuring `MaterialApp.router` with `GoRouter` and custom theme

- `lib/core/routers/app_router.dart` - Centralized routing configuration using `go_router` package with path-based and named route definitions

- `lib/ui/themes/app_theme.dart` - Theme configuration class implementing Material 3 design system with customizable color schemes

- `lib/ui/screens.dart` - Barrel file exporting all screen widgets for simplified imports across the application

- `lib/ui/menu/menu_items.dart` - Data model defining menu structure with title, subtitle, navigation link, and icon properties

- `lib/ui/screens/home/home_screen.dart` - Main navigation screen rendering `ListView` of menu items with dynamic routing

- `lib/ui/screens/buttons/buttons_screen.dart` - Comprehensive button showcase including `ElevatedButton`, `FilledButton`, `OutlinedButton`, `TextButton`, `IconButton`, and custom button implementations

- `lib/ui/screens/cards/cards_screen.dart` - Card variations demonstrating different elevation levels, border styles, color fills, and image integration with `Stack` layout

- `lib/ui/screens/animated/animated_screen.dart` - Placeholder for future animation examples

- `lib/ui/screens/app_tutorial/app_tutorial_screen.dart` - Placeholder for application tutorial functionality

- `lib/ui/screens/infinite_scroll/infinite_scroll_screen.dart` - Placeholder for infinite scrolling implementation

- `lib/ui/screens/progress/progress_screen.dart` - Placeholder for progress indicators demonstration

- `lib/ui/screens/snackbar/snackbar_screen.dart` - Placeholder for snackbar notifications examples

- `lib/ui/screens/ui_controls/ui_controls_screen.dart` - Placeholder for form controls and input widgets

## Key Points

The `ButtonsScreen` implements a comprehensive button gallery using `Wrap` widget for responsive layout. Each button type includes both enabled and disabled states, with icon variants demonstrating Material 3 design patterns. The `CustomButton` class showcases custom button creation using `ClipRRect`, `Material`, and `InkWell` for ripple effects.

The `CardsScreen` demonstrates four distinct card types through private widget classes. Card variations include default elevation styling, outlined borders using `RoundedRectangleBorder`, filled backgrounds with `surfaceContainerHighest` color, and image cards with `Stack` overlay positioning. Each card type maps over elevation values to show visual progression.

The routing architecture uses `GoRouter` for declarative navigation with path-based and named routes. The `HomeScreen` demonstrates multiple navigation approaches including direct widget pushing, named routes, and `GoRouter` context extensions. The `FloatingActionButton` in `ButtonsScreen` uses `context.pop()` for backward navigation.

The theme system implements Material 3 through `AppTheme` class with assertion-based validation. Color selection uses indexed access to predefined color list with bounds checking. The `appBarTheme` configuration disables default center alignment for consistent header styling.

The menu system uses data-driven approach with `MenuItems` model defining navigation structure. The `_CustomListTile` widget applies theme colors to icons and handles tap events for screen transitions. The `ListView.builder` provides efficient rendering for dynamic menu generation.

## Example Workflow


Launch the application to display `HomeScreen` with Material 3 themed app bar and scrollable menu list.


Select Buttons menu item to navigate to comprehensive button showcase screen with `FloatingActionButton` for backward navigation.


Observe various button types including elevated, filled, outlined, text, and icon buttons in both enabled and disabled states.


Tap floating action button to return to home screen using `context.pop()` navigation.


Select Cards menu item to view four distinct card type variations with different elevation levels.


Scroll through card examples showing default, outlined, filled, and image-based implementations.


Use system back button or app bar back arrow to return to home screen.


Navigate between screens using declarative routing system with automatic transition animations.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
