# TokTik Datasources Repositories App

A Flutter application that implements a vertical video scrolling experience similar to TikTok, following Clean Architecture principles with datasources and repositories pattern for data management, featuring fullscreen video playback, interactive buttons, and smooth page transitions.


## Structure

The project follows Clean Architecture with a clear separation of concerns through datasources, repositories, and entities:

- `lib/core/data/` - Contains `local_video_posts.dart` with mock video data stored as a list of maps

- `lib/core/entities/` - Defines `video_post.dart` entity representing the domain model for video posts

- `lib/core/helpers/` - Includes `human_formats.dart` utility for formatting numbers into human-readable strings

- `lib/core/models/` - Contains `local_video_model.dart` for JSON serialization and entity conversion

- `lib/core/datasources/` - Contains `video_posts_datasource.dart` abstract class defining data fetching contracts and `video_posts_datasource_implementation.dart` implementing the `LocalVideoDatasource` with actual data retrieval logic

- `lib/core/repositories/` - Contains `video_posts_repository.dart` abstract class defining repository contracts and `video_posts_repository_implementation.dart` implementing the `VideoPostsRepositoryImplementation` that delegates to datasources

- `lib/ui/providers/` - Holds `discover_provider.dart` implementing state management with `ChangeNotifier` and dependency injection of repositories

- `lib/ui/screens/` - Contains `discover_screen.dart` as the main screen displaying the video feed

- `lib/ui/themes/` - Includes `app_theme.dart` defining the application's dark theme configuration

- `lib/ui/widgets/shared/` - Contains reusable widgets: `video_buttons.dart` for interactive buttons and `video_scrollable_view.dart` for the vertical scrolling container

- `lib/ui/widgets/video/` - Contains video-specific widgets: `fullscreen_player.dart` for video playback and `video_background.dart` for gradient overlays

- `lib/main.dart` - Application entry point with Clean Architecture dependency injection setup


## Key Points

The application implements Clean Architecture with three distinct layers: domain entities, repository abstractions, and datasource implementations, ensuring separation of concerns and testability.

The `VideoPostsDatasource` abstract class defines contracts for data fetching methods including `getFavoriteVideosByUser` and `getTrendingVideosByPage`, establishing a clear interface for data operations.

The `LocalVideoDatasource` class implements the `VideoPostsDatasource` interface, providing concrete implementations for fetching trending videos with simulated network delays using `Future.delayed`.

The `VideoPostsRepository` abstract class defines the repository contract, acting as an intermediary between the domain layer and data sources, following the Repository Pattern.

The `VideoPostsRepositoryImplementation` class implements the repository interface by delegating calls to the injected `VideoPostsDatasource`, enabling easy swapping of data sources without affecting business logic.

Dependency injection is configured in `main.dart` where `LocalVideoDatasource` is instantiated and injected into `VideoPostsRepositoryImplementation`, which is then injected into `DiscoverProvider`, creating a clear dependency flow.

The `DiscoverProvider` receives the `VideoPostsRepository` through constructor injection, eliminating direct dependencies on concrete implementations and enabling better testability and maintainability.

State management is handled through the `provider` package with `DiscoverProvider` extending `ChangeNotifier` to manage video loading state and notify listeners of data changes.

Video playback is powered by `video_player` package with `VideoPlayerController` configured for looping, autoplay, and muted audio by default, with lifecycle management through `initState` and `dispose` methods.

The UI implements a vertical video feed using `PageView.builder` with `Axis.vertical` scrolling and `BouncingScrollPhysics` for smooth transitions, with each video rendered in a `Stack` layout containing player, gradient, caption, and interactive buttons.

Number formatting is achieved using `NumberFormat.compactCurrency` from the `intl` package to display likes and views in compact format, while animations use `animate_do` package for the spinning play button effect.

The repository pattern allows for future extensions such as implementing remote datasources, caching strategies, or multiple data sources without modifying the provider or UI layers.


## Example Workflow

The application starts in `main.dart` by instantiating `LocalVideoDatasource` as the concrete datasource implementation for video data retrieval.

The datasource is injected into `VideoPostsRepositoryImplementation` through constructor dependency injection, establishing the repository layer that abstracts data sources from business logic.

The repository instance is then injected into `DiscoverProvider` through its constructor, creating a complete dependency chain from UI layer down to data layer following Clean Architecture principles.

The `MultiProvider` initializes `DiscoverProvider` with `lazy: false` to ensure immediate creation and automatically calls `loadNextPage` to fetch initial video data.

When `loadNextPage` is called, the provider invokes `videoPostsRepository.getTrendingVideosByPage(1)` which delegates to the datasource's implementation.

The `LocalVideoDatasource.getTrendingVideosByPage` method simulates a network delay with `Future.delayed` for 2 seconds, then maps `localVideoPosts` through `LocalVideoModel.fromJson` and converts each to a `VideoPost` entity.

The fetched videos are returned as a `Future<List<VideoPost>>` which the provider awaits, then adds to `providerVideos` list and sets `initialLoading` to false before calling `notifyListeners`.

The `DiscoverScreen` watches the `DiscoverProvider` and conditionally renders either a loading indicator during initial fetch or the `VideoScrollableView` once data is loaded.

The `VideoScrollableView` builds a vertical `PageView` where each page renders a `Stack` containing a `FullscreenPlayer` with gradient overlay, caption text, and positioned `VideoButtons`.

The `FullscreenPlayer` initializes a `VideoPlayerController` for each video asset, configures looping and muted playback, and wraps it in a `GestureDetector` for tap-to-play/pause functionality.

Users can swipe vertically to navigate between videos with smooth page transitions, while tapping toggles playback state by checking `videoPlayerController.value.isPlaying` and calling appropriate controller methods.

The `VideoButtons` widget displays formatted statistics using `HumanFormats.humanReadableNumber` to convert raw numbers into readable formats, with a continuously spinning play icon using `SpinPerfect` animation.

The architecture allows for easy extension by implementing additional datasources such as `RemoteVideoDatasource` for API calls or `CachedVideoDatasource` for offline support without modifying existing provider or UI code.

If favorite videos functionality is needed, the `getFavoriteVideosByUser` method can be implemented in the datasource and called through the repository, maintaining the same clean architecture pattern.


> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
