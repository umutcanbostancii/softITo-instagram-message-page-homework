import 'package:flutter/material.dart';

class ChatMessageTextField extends StatelessWidget {
  const ChatMessageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: 'Message',
          ),
        ),
      ),
    );
  }
}
