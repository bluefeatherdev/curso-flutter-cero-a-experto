# Cinemapedia Basic UI

A Flutter application demonstrating clean architecture principles with The Movie Database (TMDb) API integration. This example showcases Riverpod state management, GoRouter navigation, Material Design 3 theming, and separation of concerns between domain, data, and presentation layers.

## Structure

The project follows clean architecture pattern with clear separation between core business logic, data access, and user interface:


- `lib/main.dart` - Application entry point configuring `MaterialApp.router` with `ProviderScope` for Riverpod and environment variable loading via `flutter_dotenv`


- `lib/core/constants/environment.dart` - Environment configuration file containing API keys and endpoints loaded from `.env` file


- `lib/core/router/app_router.dart` - Centralized routing configuration using `go_router` package with declarative route definitions and navigation paths


- `lib/core/domain/datasources/movies_datasource.dart` - Abstract datasource interface defining contract for movie data retrieval operations


- `lib/core/domain/entities/movie_entity.dart` - Domain entity representing core movie data model independent of external API schemas


- `lib/core/domain/repositories/movies_repository.dart` - Abstract repository interface defining business logic contracts for movie operations


- `lib/core/data/datasources/moviedb_datasource.dart` - Concrete datasource implementation handling TMDb API communication and HTTP requests


- `lib/core/data/models/moviedb_response.dart` - Data model representing TMDb API response structure with JSON serialization


- `lib/core/data/models/movie_moviedb.dart` - Data model representing individual movie objects from TMDb API with fields mapping


- `lib/core/data/mappers/movie_mapper.dart` - Mapper class converting `movie_moviedb` data models to `movie_entity` domain entities


- `lib/core/data/repositories/movie_repository_implementation.dart` - Concrete repository implementation orchestrating datasource calls and entity mapping


- `lib/core/helpers/human_formats.dart` - Utility helper functions for formatting human-readable data like dates and numbers


- `lib/ui/theme/app_theme.dart` - Theme configuration class implementing Material 3 design system with color schemes and typography


- `lib/ui/providers/providers.dart` - Barrel file exporting all Riverpod providers for centralized state management access


- `lib/ui/providers/movies/movies_repository_provider.dart` - Riverpod provider exposing `MoviesRepository` instance for dependency injection


- `lib/ui/providers/movies/movies_provider.dart` - Riverpod state provider managing movies list state and handling API data fetching with pagination


- `lib/ui/providers/movies/movies_slideshow_provider.dart` - Provider computing filtered movie subset for carousel slideshow display


- `lib/ui/providers/movies/initial_loading_provider.dart` - Provider managing initial application loading state during startup


- `lib/ui/screens/screens.dart` - Barrel file exporting all screen widgets for simplified imports across the application


- `lib/ui/screens/movies/home_screen.dart` - Main screen displaying paginated movies in horizontal lists with loading states and error handling


- `lib/ui/widgets/movies/movies_slideshow.dart` - Widget component rendering carousel slideshow with animated movie cards using `card_swiper`


- `lib/ui/widgets/movies/movies_horizontal_listview.dart` - Reusable widget displaying horizontal scrollable list of movies with pagination support


- `lib/ui/widgets/shared/custom_appbar.dart` - Custom application bar widget providing consistent header styling across screens


- `lib/ui/widgets/shared/custom_bottom_navigation.dart` - Custom bottom navigation widget enabling screen transitions and route navigation


- `lib/ui/widgets/shared/full_screen_loader.dart` - Full-screen loading indicator displayed during initial data fetching operations


## Key Points

The application implements clean architecture with complete separation between domain layer (business logic), data layer (API communication), and presentation layer (UI). The `movies_datasource` abstract class defines the contract for data retrieval, while `moviedb_datasource` provides concrete TMDb API implementation using HTTP client operations.


Entity mapping occurs in the `movie_mapper` class converting TMDb-specific `MovieMovieDb` models into domain-agnostic `MovieEntity` objects. This decouples UI components from external API schema changes, enabling robust architecture evolution.


Riverpod state management handles reactive UI updates through `movies_repository_provider` exposing repository instance and `movies_provider` managing movies list state. The `ProviderScope` widget at application root enables provider access throughout the widget tree without explicit passing.


Environment configuration is managed through `flutter_dotenv` loading `.env` file at application startup, storing sensitive API keys and endpoints securely outside version control. The `environment.dart` constants file accesses these values for datasource initialization.


GoRouter enables declarative navigation with type-safe route definitions and automatic transition animations. Named routes and path-based navigation provide flexible routing options matching different user interaction patterns.


Material Design 3 theming via `AppTheme` class provides consistent visual styling across all screens with color schemes, typography, and component styling configured centrally.


Pagination implementation uses `StateNotifier` pattern tracking current page number and loading state, automatically appending new results to existing list without resetting UI state.


Animation libraries like `animate_do` and `card_swiper` enhance user experience with smooth transitions, fade-ins, and carousel effects for movie displays.


## Example Workflow

Launch the application triggering `main()` to load environment variables from `.env` file and initialize `ProviderScope` with Riverpod.


The `home_screen` renders and initializes `movies_provider` triggering `moviedb_datasource` to fetch initial movies batch from TMDb API.


`movies_datasource` executes HTTP GET request to TMDb endpoint using API key from environment configuration.


Response JSON maps to `moviedb_response` data model, then mapper converts individual `movie_moviedb` objects to `movie_entity` domain entities.


`movies_provider` state updates with fetched entity list triggering `home_screen` rebuild displaying movies in scrollable lists.


User scrolls to list bottom triggering pagination logic fetching next movies batch through same datasource-mapper-entity flow.


Navigation routes configured in `app_router` enable screen transitions with automatic animation and state preservation across route changes.


Theme configuration from `app_theme` applies Material 3 styling consistently across all rendered screens and components.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
