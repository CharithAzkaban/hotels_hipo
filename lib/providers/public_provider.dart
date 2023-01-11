import 'package:flutter/material.dart';

class PublicProvider extends ChangeNotifier {
  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  void setCurrentPageIndex(int currentPageIndex) {
    _currentPageIndex = currentPageIndex;
    notifyListeners();
  }
}
