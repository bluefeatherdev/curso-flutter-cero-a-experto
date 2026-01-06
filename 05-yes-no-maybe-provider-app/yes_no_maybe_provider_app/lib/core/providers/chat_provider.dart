// Yes, No, Maybe Provider App
import 'package:flutter/material.dart';
import 'package:yes_no_maybe_provider_app/core/entities/message.dart';
import 'package:yes_no_maybe_provider_app/core/helpers/get_yes_no_answer.dart';

/// Provider class that manages chat state and handles message interactions between user and automated responses.
class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hello, darling', fromWho: FromWho.him),
    Message(text: 'Are you okay?', fromWho: FromWho.him),
  ];

  /// Sends a new message from the user and triggers an automated reply if the message ends with a question mark.
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final Message newMessage = Message(text: text, fromWho: FromWho.him);

    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  /// Fetches an automated yes/no/maybe response and adds it to the message list.
  Future<void> herReply() async {
    final Message herMessage = await getYesNoAnswer.getAnswer();

    messageList.add(herMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  /// Animates the scroll position to the bottom of the chat list with a smooth transition.
  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
