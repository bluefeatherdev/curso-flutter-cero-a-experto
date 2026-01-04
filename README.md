# Flutter de Cero a Experto

![Static Badge](https://img.shields.io/badge/framework/sdk-flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white&labelColor=101010)
![Static Badge](https://img.shields.io/badge/language-dart-0175C2?style=for-the-badge&logo=dart&logoColor=white&labelColor=101010) 
![Static Badge](https://img.shields.io/badge/Scripting-bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white&labelColor=101010)

Curso de Udemy

## ?

### Dart Introduction

?


### Flutter Installation

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
        <img src="https://github.com/user-attachments/assets/c4a5a512-48e0-4ac0-a07d-56bc0e8c09d8" width="250" alt="android_flutter_installation_01"/>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_flutter_installation_01" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### First Steps

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
        <video src="https://github.com/user-attachments/assets/4d1cbd0c-da29-4f86-b590-fc3a069ae1ee" width="250" alt="android_flutter_counter_app"/>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### Yes No Maybe App

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
        <img src="https://github.com/user-attachments/assets/f76bda39-1f54-4661-981d-463902004bb6" width="250" alt="android_yes_no_maybe_app"/>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>

### Yes No Maybe Provider App

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
        <img src="https://github.com/user-attachments/assets/e30f5c35-82e4-4bb4-9da1-444c41481994" width="250" alt="android_yes_no_maybe_provider_app"/>
      </td>
      <td align="center">
        <!-- <img src="URL_IMAGEN_IOS" width="250" alt="ios_alt_here" /> -->
        Not available
      </td>
    </tr>
  </table>
</div>


### TokTik App

?


> This repository is licensed under the terms of the [Apache License 2.0](LICENSE). 

> Made with '\u{2665}' (♥) by Jesús Domínguez [@bluefeatherdev](https://github.com/bluefeatherdev)
