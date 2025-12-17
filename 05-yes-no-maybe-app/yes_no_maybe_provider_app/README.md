# yes_no_maybe_provider_app

A Flutter chat application demonstrating state management with Provider, HTTP requests using Dio, and dynamic UI updates based on external API responses.

This example showcases a conversational interface where the user sends messages, and an automated response system replies with yes/no/maybe answers fetched from an external API, accompanied by animated GIF images.

## Structure

The project follows a clean architecture pattern with separation between core business logic and UI components:

```
lib/
├── core/
│   ├── entities/
│   │   └── message.dart
│   ├── helpers/
│   │   └── get_yes_no_answer.dart
│   ├── models/
│   │   └── yes_no_model.dart
│   └── providers/
│       └── chat_provider.dart
├── ui/
│   ├── screens/
│   │   └── chat_screen.dart
│   ├── themes/
│   │   └── app_theme.dart
│   └── widgets/
│       ├── chat/
│       │   ├── her_message_bubble.dart
│       │   └── his_message_bubble.dart
│       └── shared/
│           └── message_field_box.dart
└── main.dart
```

### Core Layer

The `core` directory contains business logic and data management components.


**Entities:**

The `message.dart` file defines the `Message` class and `FromWho` enum, representing chat messages with text content, optional image URLs, and sender identification.


**Helpers:**

The `get_yes_no_answer.dart` file implements the `GetYesNoAnswer` service class, responsible for making HTTP requests to the YesNo API using the Dio package and returning structured message entities.


**Models:**

The `yes_no_model.dart` file defines the `YesNoModel` class, which maps JSON responses from the external API into Dart objects and provides conversion methods to the `Message` entity.


**Providers:**

The `chat_provider.dart` file contains the `ChatProvider` class, which extends `ChangeNotifier` to manage chat state, handle message sending, trigger automated replies, and control scroll behavior within the chat list.


### UI Layer

The `ui` directory organizes all visual components and theming.


**Screens:**

The `chat_screen.dart` file implements the `ChatScreen` widget, which displays the app bar with avatar and title, along with the `_ChatView` widget that renders the scrollable message list and input field.


**Themes:**

The `app_theme.dart` file defines the `AppTheme` class, providing Material 3 theming with a customizable color scheme based on a selected color index from a predefined palette.


**Widgets:**

The `chat` subdirectory contains message bubble components for different senders.

The `her_message_bubble.dart` file renders messages from the automated responder with optional image content and loading feedback.

The `his_message_bubble.dart` file displays user-sent messages in a distinct visual style.

The `shared` subdirectory includes reusable UI components.

The `message_field_box.dart` file provides the text input field with send button functionality, validation, and keyboard management.

## Key Points


**State Management with Provider:**

The application uses the Provider package to manage chat state reactively. The `ChatProvider` class notifies listeners when new messages are added, ensuring the UI updates automatically without manual state synchronization.


**HTTP Integration with Dio:**

The `GetYesNoAnswer` helper class leverages the Dio package to perform asynchronous HTTP requests to the YesNo API, demonstrating external data fetching and error-free JSON deserialization.


**Entity and Model Separation:**

The architecture distinguishes between domain entities and data models. The `Message` entity represents business logic, while `YesNoModel` handles API response mapping, ensuring clean separation of concerns.


**Dynamic UI Updates:**

When a user sends a message ending with a question mark, the `ChatProvider` automatically triggers an API call and appends the response to the message list, simulating a conversational flow.


**Scroll Behavior Management:**

The `ChatProvider` includes a `ScrollController` that animates the chat list to the bottom whenever new messages are added, providing smooth user experience and visual feedback.


**Material 3 Theming:**

The `AppTheme` class generates consistent visual styling using Material 3 design principles, with support for multiple color schemes selectable at initialization.


**Image Loading Feedback:**

The `_ImageBubble` widget inside `HerMessageBubble` provides visual feedback during network image loading, displaying placeholder text until the image is fully downloaded.


**Keyboard and Focus Management:**

The `MessageFieldBox` widget handles focus node management and dismisses the keyboard when tapping outside the input field, improving usability on mobile devices.

## Example Workflow


**Application Launch:**

The user opens the app, which initializes the `ChatProvider` via `MultiProvider` in `main.dart`, establishing the state management context for the entire widget tree.


**Initial Messages Display:**

The `ChatScreen` renders the app bar with avatar and title, followed by the `_ChatView` widget displaying the initial conversation loaded from `ChatProvider.messageList`.


**User Input:**

The user types a message in the `MessageFieldBox` input field and either presses the send button or submits via keyboard action.


**Message Sending:**

The `ChatProvider.sendMessage` method receives the input text, creates a new `Message` instance with `FromWho.him`, and appends it to the message list.


**Question Detection:**

If the submitted message ends with a question mark, the provider automatically invokes `ChatProvider.herReply` to fetch an automated response.


**API Request Execution:**

The `GetYesNoAnswer.getAnswer` method sends an HTTP GET request to the YesNo API using Dio, retrieves the JSON response, and maps it to a `YesNoModel` instance.


**Response Mapping:**

The `YesNoModel.toMessageEntity` method converts the API response into a `Message` entity with text, image URL, and `FromWho.her` identification.


**UI Update:**

The new message is added to the provider's message list, triggering `notifyListeners`, which causes the `ListView.builder` in `_ChatView` to rebuild and display the new content.


**Scroll Animation:**

The `ChatProvider.moveScrollToBottom` method animates the scroll position to the latest message, ensuring the conversation remains visible without manual scrolling.


**Image Loading:**

The `HerMessageBubble` widget renders the automated response text and begins loading the associated image from the provided URL, showing placeholder text during the download process.


**Conversation Continuation:**

The user can continue sending messages, repeating the workflow, with each question triggering a new automated response and maintaining the chat flow.

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
