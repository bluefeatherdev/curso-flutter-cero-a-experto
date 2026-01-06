// Yes, No, Maybe App
import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_maybe_app/widgets/chat/his_message_bubble.dart';
import 'package:yes_no_maybe_app/widgets/shared/message_field_box.dart';

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

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 46,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const HisMessageBubble();
                },
              ),
            ),

            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
