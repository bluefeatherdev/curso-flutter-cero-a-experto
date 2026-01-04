# Flutter de Cero a Experto

![Static Badge](https://img.shields.io/badge/framework/sdk-flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white&labelColor=101010)
![Static Badge](https://img.shields.io/badge/language-dart-0175C2?style=for-the-badge&logo=dart&logoColor=white&labelColor=101010) 
![Static Badge](https://img.shields.io/badge/Scripting-bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white&labelColor=101010)

This repository is a personal learning log where I document and share my progress through the Udemy course *Flutter - Móvil: De cero a experto (2023 Edition)*. It contains practical examples, apps, and notes built with sound null safety, covering everything from Dart fundamentals to advanced Flutter concepts such as state management, clean architecture, and real-world mobile development practices.

> This repository is licensed under the terms of the [Apache License 2.0](LICENSE). 

## My Learning Path

### 1. Dart Introduction

?


### 2. Flutter Installation

The Flutter Demo Home Page is the default counter app included in the SDK. It shows a number on screen that increases each time the `FloatingActionButton` is pressed, demonstrating state management with `StatefulWidget`, `setState()`, and the basic use of `Scaffold`, `AppBar`, and layout widgets.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Installed Flutter SDK</li>
          <li>Configured VS Code extensions</li>
          <li>Ran basic Flutter commands (flutter doctor)</li>
          <li>Created a new Flutter project</li>
          <li>Debugged app via USB device</li>
          <li>Explored default counter app structure</li>
          <li>Understood main.dart entry point</li>
          <li>Learned hot reload & hot restart</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### 3. First Steps

This Flutter Counter App builds on the default demo by adding custom features. It uses a `StatefulWidget` to manage the counter state, includes an `AppBar` with a reset `IconButton`, and updates the text dynamically to show `Click` or `Clicks` depending on the value. The app demonstrates conditional rendering, state updates with `setState()`, and Material 3 theming with a customized `FloatingActionButton`.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Configured MaterialApp with Material 3 theme</li>
          <li>Disabled debug banner in Flutter projects</li>
          <li>Created custom CounterScreen widget</li>
          <li>Implemented StatefulWidget for dynamic state</li>
          <li>Used setState() to update UI</li>
          <li>Added AppBar actions with IconButton</li>
          <li>Implemented reset functionality for counter</li>
          <li>Applied conditional rendering for singular/plural text</li>
          <li>Customized Text styles with font size and weight</li>
          <li>Integrated FloatingActionButton with custom icon</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### 4. Yes No Maybe App

This Flutter app, `yes_no_maybe_app`, demonstrates how to build a simple chat interface with custom themes and styled message bubbles. It uses `MaterialApp` configured with a custom `AppTheme`, and a `ChatScreen` that displays alternating `HerMessageBubble` and `HisMessageBubble` inside a `ListView`. The `MessageFieldBox` provides text input handling with a send button and submit action, while `HerMessageBubble` can include both text and images through an `_ImageBubble`. This example highlights theme customization, conditional UI components, and the basics of building a personalized chat interface in Flutter.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Configured MaterialApp with custom AppTheme</li>
          <li>Defined color themes using colorSchemeSeed</li>
          <li>Built ChatScreen with Scaffold and AppBar</li>
          <li>Implemented alternating message bubbles (HerMessageBubble & HisMessageBubble)</li>
          <li>Created MessageFieldBox with TextFormField</li>
          <li>Handled text input with TextEditingController and FocusNode</li>
          <li>Customized InputDecoration with rounded borders and send icon</li>
          <li>Implemented onFieldSubmitted and button press to clear text</li>
          <li>Displayed network images with rounded corners in ImageBubble</li>
          <li>Applied primary and secondary colors for styled message containers</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### 5. Yes No Maybe Provider App

The `yes_no_maybe_provider_app` is a Flutter chat application that demonstrates state management with `Provider`, HTTP requests using `Dio`, and dynamic UI updates based on external API responses. It features a conversational interface where the user sends messages, and an automated system replies with yes/no/maybe answers fetched from the YesNo API, often accompanied by animated GIFs. This example highlights clean architecture with separation of concerns, reactive state updates, and integration of external data sources to build a responsive and themed chat experience.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Implemented state management using Provider</li>
          <li>Created ChatProvider extending ChangeNotifier</li>
          <li>Integrated Dio for HTTP requests</li>
          <li>Fetched yes/no/maybe answers from external API</li>
          <li>Mapped JSON responses into Dart models (YesNoModel)</li>
          <li>Separated entities, models, helpers, and providers in core layer</li>
          <li>Built ChatScreen with scrollable message list</li>
          <li>Managed scroll behavior with ScrollController</li>
          <li>Configured MaterialApp with custom AppTheme and Material 3 design</li>
          <li>Developed HerMessageBubble with text and image content</li>
          <li>Developed HisMessageBubble for user messages</li>
          <li>Created MessageFieldBox with TextFormField and send button</li>
          <li>Handled focus and keyboard dismissal for better UX</li>
          <li>Implemented conditional automated replies when message ends with “?”</li>
          <li>Displayed loading feedback for network images</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>


### 6. TokTik App

The `TokTik App` is a Flutter application that replicates a vertical video scrolling experience similar to TikTok. It uses `PageView.builder` with vertical scrolling to display fullscreen videos, integrates `VideoPlayerController` for playback, and manages state with `Provider`. The UI combines a `Stack` layout with gradient overlays, captions, and interactive buttons for likes, views, and playback control. Features include autoplay, looping, muted audio, gesture detection for play/pause, and animated icons using `animate_do`. This example demonstrates clean architecture, responsive design, and modern Material 3 theming for building immersive video feed applications.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Implemented vertical video feed with PageView.builder</li>
          <li>Configured BouncingScrollPhysics for smooth transitions</li>
          <li>Managed state with Provider and DiscoverProvider</li>
          <li>Integrated video_player package for playback</li>
          <li>Controlled lifecycle with initState and dispose</li>
          <li>Created LocalVideoModel with fromJson and entity conversion</li>
          <li>Formatted numbers with intl NumberFormat.compactCurrency</li>
          <li>Built UI using Stack layout with positioned widgets</li>
          <li>Added gradient overlay for text readability</li>
          <li>Developed VideoButtons widget with likes, views, and animated play icon</li>
          <li>Implemented gesture detection for play/pause control</li>
          <li>Applied Material 3 dark theme with AppTheme</li>
          <li>Handled video initialization with FutureBuilder</li>
          <li>Ensured autoplay, looping, and muted playback by default</li>
          <li>Created reusable shared and video-specific widgets</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>


### 7. TokTik Datasources Repositories App

The `TokTik Datasources Repositories App` is a Flutter application that extends the vertical video scrolling experience with a Clean Architecture approach. It separates concerns into `datasources`, `repositories`, and `entities`, ensuring scalability and testability. The app uses a `VideoPostsDatasource` to define data contracts, a `VideoPostsRepository` to abstract business logic, and `DiscoverProvider` for state management with dependency injection. Video playback is powered by the `video_player` package, while UI components like `FullscreenPlayer`, `VideoButtons`, and gradient overlays create an immersive feed. This example demonstrates how to integrate the repository pattern, provider-based state management, and Material 3 theming to build a maintainable and extensible video application.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Applied Clean Architecture with datasources, repositories, and entities</li>
          <li>Defined VideoPostsDatasource abstract class for data contracts</li>
          <li>Implemented LocalVideoDatasource with simulated network delays</li>
          <li>Created VideoPostsRepository abstraction for business logic</li>
          <li>Delegated data operations via VideoPostsRepositoryImplementation</li>
          <li>Configured dependency injection in main.dart</li>
          <li>Injected repository into DiscoverProvider using constructor injection</li>
          <li>Managed state with Provider and ChangeNotifier</li>
          <li>Built DiscoverScreen with conditional loading and video feed</li>
          <li>Implemented vertical PageView with smooth transitions</li>
          <li>Integrated video_player for autoplay, looping, and muted playback</li>
          <li>Handled lifecycle with initState and dispose</li>
          <li>Formatted numbers with intl compactCurrency</li>
          <li>Created reusable widgets: VideoButtons, VideoScrollableView, VideoBackground</li>
          <li>Added gesture detection for play/pause control</li>
          <li>Used animate_do for spinning play icon animation</li>
          <li>Enabled easy extension for remote or cached datasources</li>
          <li>Maintained testability and scalability with repository pattern</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### 8. Basic Widgets App

The `Basic Widgets App` is a Flutter application that demonstrates fundamental Material Design 3 widgets and navigation patterns using `GoRouter`. It showcases a gallery of button types, card variations, and a modular routing system with a data-driven menu. The app uses `MaterialApp.router` for declarative navigation, `AppTheme` for customizable Material 3 styling, and separates functionality into screens, themes, and routing modules. This example highlights responsive layouts with `Wrap`, custom button creation, card elevation variations, and efficient navigation through a centralized router, making it a solid foundation for learning core Flutter UI components.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Configured MaterialApp.router with GoRouter</li>
          <li>Implemented centralized routing in app_router.dart</li>
          <li>Created AppTheme with Material 3 design system</li>
          <li>Built HomeScreen with dynamic ListView menu</li>
          <li>Defined MenuItems model for navigation structure</li>
          <li>Showcased multiple button types (Elevated, Filled, Outlined, Text, Icon)</li>
          <li>Developed CustomButton with ClipRRect, Material, and InkWell</li>
          <li>Implemented CardsScreen with elevation, outlined, filled, and image cards</li>
          <li>Used Stack layout for image card overlays</li>
          <li>Applied responsive layouts with Wrap widget</li>
          <li>Configured appBarTheme for consistent header styling</li>
          <li>Implemented backward navigation with context.pop()</li>
          <li>Prepared placeholder screens for animations, tutorials, infinite scroll, progress, snackbar, and UI controls</li>
          <li>Applied data-driven menu rendering with ListView.builder</li>
          <li>Ensured modular architecture separating core, UI, and theme layers</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### 9. Intermediate Widgets App

The `Intermediate Widgets App` is a Flutter application that extends basic widget concepts with interactive UI controls, progress indicators, snackbars, dialogs, animated containers, infinite scrolling, and onboarding tutorial screens. It demonstrates intermediate Material Design 3 patterns using `StatefulWidget`, `setState`, and reactive programming with streams. The app integrates `GoRouter` for navigation, `ScaffoldMessenger` for snackbars, `PageView` for tutorials, and `AnimatedContainer` for dynamic animations. This example highlights how to build responsive, interactive, and stateful UIs with clean modular architecture and modern Flutter practices.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Configured MaterialApp.router with GoRouter for extended navigation</li>
          <li>Implemented ProgressScreen with CircularProgressIndicator and StreamBuilder</li>
          <li>Created SnackbarsDialogsScreen using ScaffoldMessenger, AboutDialog, and AlertDialog</li>
          <li>Built UiControlsScreen with SwitchListTile, ExpansionTile, RadioListTile, and CheckboxListTile</li>
          <li>Developed AppTutorialScreen with PageView, PageController, and animate_do animations</li>
          <li>Implemented InfiniteScrollScreen with ScrollController and RefreshIndicator</li>
          <li>Loaded dynamic images from picsum.photos with simulated delays</li>
          <li>Created AnimatedScreen using AnimatedContainer and Random for shape generation</li>
          <li>Applied elasticOut curve for smooth transitions</li>
          <li>Expanded menu system with eight navigation items</li>
          <li>Configured AppTheme with Material 3 design system</li>
          <li>Used ListView.builder for efficient menu rendering</li>
          <li>Implemented floating action buttons for navigation and interactions</li>
          <li>Ensured modular architecture separating core, UI, and theme layers</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### 10. Advanced Widgets App

The `Advanced Widgets App` is a Flutter application that demonstrates production-ready architecture with advanced state management using `Riverpod`, dynamic theming with persistent color selection and dark mode toggle, and enhanced navigation through a `NavigationDrawer`. It integrates `ProviderScope` for global state management, `ConsumerWidget` for reactive UI updates, and a modular routing system with `GoRouter`. The app showcases complex widget patterns including counters, theme changers, infinite scroll, animated containers, and onboarding tutorials, all styled with Material 3 design principles. This example highlights scalable architecture, reactive theming, and comprehensive navigation for modern Flutter applications.

<div align="center">
  <table border="0">
    <tr>
      <th>Skills</th>
      <th>Android App</th>
      <th>iOS App</th>
    </tr>
    <tr>
      <td>
        <ul>
          <li>Wrapped application with ProviderScope for Riverpod state management</li>
          <li>Configured MaterialApp.router with dynamic theme from themeNotifierProvider</li>
          <li>Implemented counterProvider as StateProvider<int> for reactive counter state</li>
          <li>Created ThemeNotifier with toggleDarkMode and changeColorIndex methods</li>
          <li>Integrated multiple providers: colorListProvider, isDarkModeProvider, selectedColorProvider</li>
          <li>Developed ThemeChangerScreen with RadioListTile for color selection</li>
          <li>Built RiverpodCounterScreen as ConsumerWidget with reactive counter updates</li>
          <li>Implemented SideMenu using NavigationDrawer with grouped sections</li>
          <li>Configured GoRouter for advanced navigation across ten screens</li>
          <li>Applied notch detection for adaptive drawer padding</li>
          <li>Ensured automatic drawer closing with scaffoldKey and Navigator.pop</li>
          <li>Created AppTheme class for dynamic ThemeData generation</li>
          <li>Showcased Material 3 styling with dark mode support</li>
          <li>Expanded menu system with ten navigation items</li>
          <li>Maintained modular architecture separating core, UI, and theme layers</li>
          <li>Verified theme persistence across navigation and screen transitions</li>
        </ul>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_ANDROID" width="250" alt="android_alt_here" /> -->
        Not available
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
