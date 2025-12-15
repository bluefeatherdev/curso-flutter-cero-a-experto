# yes_no_maybe_app

This Flutter application demonstrates a simple chat interface with themed styling.  
It illustrates how to configure custom themes, message bubbles, and input fields.

## Structure

- `main.dart`  

  Root entry point with `MyApp`.  

  Configures `MaterialApp` with:  
  
  - Title `Yes No Maybe App`  
  
  - Custom theme from `AppTheme`  
  - Home set to `ChatScreen`  

- `AppTheme`  

  Defines a list of color themes.  

  Provides `theme()` method returning `ThemeData` with `colorSchemeSeed`.  

- `ChatScreen`  

  A `StatelessWidget` that builds a `Scaffold` with:  
  
  - `AppBar` showing avatar and title `My loved ❤️`  
  
  - Body containing `_ChatView`  

- `_ChatView`  

  Builds a `SafeArea` with a `Column`:  
  
  - Expanded `ListView.builder` alternating `HerMessageBubble` and `HisMessageBubble`  
  
  - `MessageFieldBox` for input  
  

- `MessageFieldBox`  

  A `StatelessWidget` with `TextFormField`:  
  
  - Uses `TextEditingController` and `FocusNode` 
   
  - Custom `InputDecoration` with rounded borders and send icon  
  - Handles `onFieldSubmitted` and button press to clear text  

- `HerMessageBubble`  

  A `StatelessWidget` showing:  
  
  - A container with secondary color and text `"I love you"`  
  
  - An `_ImageBubble` displaying an image or loading text  

- `_ImageBubble`  

  Displays a network image with rounded corners.  
  Shows placeholder text while loading.  

- `HisMessageBubble`  

  A `StatelessWidget` showing:  
  
  - A container with primary color and text `"You're my world"`  

## Key Points

- Custom theme management with `AppTheme` and `colorSchemeSeed`  

- Chat interface built with alternating message bubbles  

- `MessageFieldBox` demonstrates text input handling with send button and submit action  

- `HerMessageBubble` includes both text and image content  

- `HisMessageBubble` includes text content styled with primary color  

- Useful for building chat UIs with personalized themes and message components  

## Example Workflow

1. Launch the app → `Yes No Maybe App` screen is displayed  

2. The UI shows a chat interface with alternating message bubbles  

3. `HerMessageBubble` displays `"I love you"` and an image bubble  

4. `HisMessageBubble` displays `"You're my world"`  

5. Type a message in `MessageFieldBox` → press send or submit to clear input  

6. The app demonstrates how to build a themed chat interface in Flutter  

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
