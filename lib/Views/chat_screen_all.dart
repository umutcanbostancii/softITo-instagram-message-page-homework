import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homework_message/Widgets/message_listview.dart';
import 'package:homework_message/components/bottom_appBar.dart';
import 'package:homework_message/models/chat_appbar.dart';

class ChatAllScreens extends StatefulWidget {
  const ChatAllScreens({super.key});

  @override
  State<ChatAllScreens> createState() => _ChatAllScreensState();
}

class _ChatAllScreensState extends State<ChatAllScreens> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MessageListView(),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
