// Yes, No, Maybe Provider App
import 'package:flutter/material.dart';

/// Input field widget for composing and sending chat messages with validation and submit actions.
class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key, required this.onValue});

  /// Callback triggered when the user submits a message.
  final ValueChanged<String> onValue;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final UnderlineInputBorder outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40.0),
    );

    final InputDecoration inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final String textValue = textEditingController.value.text;
          textEditingController.clear();
          onValue(textValue);
        },
        icon: const Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textEditingController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textEditingController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}
