import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:homework_message/Views/chat_screen.dart';
import 'package:homework_message/Views/chat_screen_all.dart';
import 'package:homework_message/Views/reels.dart';
import 'package:homework_message/Widgets/message_listview.dart';
import 'package:homework_message/components/main_screen.dart';
import 'package:homework_message/components/profile-page.dart';
import 'package:homework_message/components/timeline-post.dart';
import 'package:homework_message/message-page/message-page.dart';
import 'package:homework_message/provider/page_provider.dart';
import 'package:homework_message/provider/reels_provider.dart';
import 'package:homework_message/timeline_stories.dart';
import 'package:provider/provider.dart';

import 'Views/reels_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider(create: (_) => ReelsProvider()),
      ListenableProvider(create: (_) => PageProvider()),
    ],
    child: const MyApp(),
  ));
}

bool _isDarkModeEnabled = true;
var _darkTheme = ThemeData.dark();
var _lightTheme = ThemeData.light();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: _isDarkModeEnabled ? _darkTheme : _lightTheme,
      home: const MainScreen(),
    );
  }
}
