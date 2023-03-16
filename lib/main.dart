import 'package:flutter/material.dart';
import 'package:homework_message/components/profile-page.dart';
import 'package:homework_message/message-page/message-page.dart';
import 'package:homework_message/message-page/message_listview.dart';
import 'package:homework_message/timeline_stories.dart';


void main() {
  runApp(const MyApp());
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
      home: MessagePage(),
      
    );
  }
}
