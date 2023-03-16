import 'package:flutter/material.dart';
import 'package:instagram_clone_app/components/profile-page.dart';
import 'package:instagram_clone_app/components/profile-page.dart';
import 'package:instagram_clone_app/components/timeline-post.dart';

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
      home: ProfilePage(),
      
    );
  }
}
