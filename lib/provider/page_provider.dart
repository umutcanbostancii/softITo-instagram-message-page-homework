import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int _page = 0;
  bool _isPressed = false;
  int get getPage => _page;

  bool get getPressed => _isPressed;

  setPressed(bool i) {
    _isPressed = i;
    notifyListeners();
  }

  setPage(int i) {
    _page = i;
    notifyListeners();
  }
}
