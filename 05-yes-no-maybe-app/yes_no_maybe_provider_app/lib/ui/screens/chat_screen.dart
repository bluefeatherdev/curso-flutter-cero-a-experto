// Yes, No, Maybe Provider App
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_maybe_provider_app/core/entities/message.dart';
import 'package:yes_no_maybe_provider_app/core/providers/chat_provider.dart';
import 'package:yes_no_maybe_provider_app/ui/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_maybe_provider_app/ui/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_maybe_provider_app/ui/widgets/shared/message_field_box.dart';

/// Main chat screen widget displaying conversation UI with app bar and chat view.
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://img.freepik.com/premium-photo/pretty-young-girl-with-long-brown-hair-orange-dress-field-sunset-concept-free_332273-1717.jpg',
            ),
          ),
        ),
        title: const Text('My loved ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

/// Internal widget responsible for rendering the chat messages list and input field.
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final Message message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.her)
                      ? HerMessageBubble(message: message)
                      : HisMessageBubble(message: message);
                },
              ),
            ),

            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
