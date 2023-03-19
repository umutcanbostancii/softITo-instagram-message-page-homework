import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homework_message/message-page/chat_appBar.dart';

import '../message-page/chat_message.dart';
import '../message-page/chat_message_text_field.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _InstagramChatScreenState();
}

class _InstagramChatScreenState extends State<ChatScreen> {
  final List<Message> messages = [
    Message(sender: 'Alice', text: 'Hi'),
    Message(sender: 'Bob', text: 'Hello'),
    Message(sender: 'Alice', text: 'How are you?'),
    Message(sender: 'Bob', text: 'I\'m fine, thanks. And you?'),
    Message(sender: 'Alice', text: 'I\'m good, too.'),
    Message(sender: 'Bob', text: 'Great!'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          return ChatMessage(
            message: messages[index],
          );
        },
      ),
      bottomNavigationBar: ChatMessageTextField(),
    );
  }
}
