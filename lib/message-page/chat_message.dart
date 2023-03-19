import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.message});
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: message.sender == 'Alice'
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: message.sender == 'Alice'
                    ? Colors.deepPurple.shade900
                    : Colors.grey.shade800,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                message.text,
                style: TextStyle(
                  color: message.sender == 'Alice'
                      ? Colors.white
                      : Colors.grey.shade300,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
