import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int _page = 0;

  int get getPage => _page;

  setPage(int i) {
    _page = i;
    notifyListeners();
  }
}
