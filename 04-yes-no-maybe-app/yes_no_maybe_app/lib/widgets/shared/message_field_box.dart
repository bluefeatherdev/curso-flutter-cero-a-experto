// Yes, No, Maybe App
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

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
          debugPrint('Button: $textValue');
          textEditingController.clear();
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
        debugPrint('Submit value: $value');
        textEditingController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
