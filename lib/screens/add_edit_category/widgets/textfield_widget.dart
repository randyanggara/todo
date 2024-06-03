import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  final TextEditingController textEditingController;
  
  const TextFieldWidget({
    super.key,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: 'Title:',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
