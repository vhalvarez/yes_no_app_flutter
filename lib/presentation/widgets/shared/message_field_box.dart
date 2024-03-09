import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textControlLer = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "??"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textControlLer.value.text;
          print('Valor de la caja de texto?');
          textControlLer.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textControlLer,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value $value');
        textControlLer.clear();
        focusNode.requestFocus();
      },
    );
  }
}
