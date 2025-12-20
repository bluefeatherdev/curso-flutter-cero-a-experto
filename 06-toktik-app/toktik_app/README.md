# TokTik App

A Flutter application that replicates a vertical video scrolling experience similar to TikTok, featuring fullscreen video playback, interactive buttons, and smooth page transitions.


## Structure

The project follows a clean architecture approach with the following directory organization:

- `lib/core/data/` - Contains `local_video_posts.dart` with mock video data stored as a list of maps

- `lib/core/entities/` - Defines `video_post.dart` entity representing the business logic model for video posts

- `lib/core/helpers/` - Includes `human_formats.dart` utility for formatting numbers into human-readable strings

- `lib/core/models/` - Contains `local_video_model.dart` for JSON serialization and entity conversion

- `lib/ui/providers/` - Holds `discover_provider.dart` implementing state management with ChangeNotifier

- `lib/ui/screens/` - Contains `discover_screen.dart` as the main screen displaying the video feed

- `lib/ui/themes/` - Includes `app_theme.dart` defining the application's dark theme configuration

- `lib/ui/widgets/shared/` - Contains reusable widgets: `video_buttons.dart` for interactive buttons and `video_scrollable_view.dart` for the vertical scrolling container

- `lib/ui/widgets/video/` - Contains video-specific widgets: `fullscreen_player.dart` for video playback and `video_background.dart` for gradient overlays

- `lib/main.dart` - Application entry point with provider configuration


## Key Points

The application implements a vertical video feed using `PageView.builder` with `Axis.vertical` scrolling and `BouncingScrollPhysics` for smooth transitions between videos.

State management is handled through the `provider` package with `DiscoverProvider` extending `ChangeNotifier` to manage video loading and distribution across the widget tree.

Video playback is powered by `video_player` package with `VideoPlayerController` configured for looping, autoplay, and muted audio by default. The controller lifecycle is managed through `initState` and `dispose` methods.

The `LocalVideoModel` class implements a factory constructor `fromJson` for parsing mock data and a `toVideoPostEntity` method for converting to the domain entity, following the repository pattern.

Number formatting is achieved using `NumberFormat.compactCurrency` from the `intl` package to display likes and views in a compact format (e.g., 1.5K, 2M).

The UI implements a `Stack` layout with positioned widgets: fullscreen video player at the base, gradient overlay for text readability, caption text at the bottom left, and interactive buttons at the bottom right.

Interactive buttons include a heart icon for likes, an eye icon for views, and a spinning play icon created with `SpinPerfect` from the `animate_do` package with infinite rotation.

Gesture detection is implemented on the video player allowing tap-to-pause and tap-to-play functionality through `GestureDetector` wrapped around the `AspectRatio` widget.

The application uses Material 3 design with `useMaterial3: true` and `Brightness.dark` for a modern dark theme experience.

Error handling includes `FutureBuilder` to display a loading indicator while the video controller initializes, preventing premature rendering of uninitialized video content.


## Example Workflow

The application starts by initializing the `DiscoverProvider` through `MultiProvider` with `lazy: false` to ensure immediate provider creation and calls `loadNextPage` to load initial video data.

The `loadNextPage` method maps the `localVideoPosts` list through `LocalVideoModel.fromJson` and converts each model to a `VideoPost` entity, then adds them to the `providerVideos` list.

The `DiscoverScreen` watches the `DiscoverProvider` and conditionally renders either a loading indicator or the `VideoScrollableView` based on the `initialLoading` state.

Once loaded, the `VideoScrollableView` builds a vertical `PageView` where each page renders a `Stack` containing a `FullscreenPlayer` and positioned `VideoButtons`.

The `FullscreenPlayer` initializes a `VideoPlayerController` with the video asset path, configures it for looping and muted playback, and wraps it in a `GestureDetector` for play/pause control.

Users can swipe vertically to navigate between videos, with each video automatically playing when it becomes visible and pausing when scrolled away.

Tapping the video toggles between play and pause states by checking `videoPlayerController.value.isPlaying` and calling the appropriate controller method.

The `VideoButtons` widget displays formatted statistics using `HumanFormats.humanReadableNumber` to convert raw numbers like 23230 into readable formats like 23K.

The gradient overlay created by `VideoBackground` ensures text remains readable against varying video content by applying a `LinearGradient` from transparent to black87.

The spinning play button at the bottom right continuously rotates using `SpinPerfect` with a 5-second duration and `infinite: true` configuration, providing visual feedback for video playback.


> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
