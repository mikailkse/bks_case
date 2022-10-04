import 'package:flutter/material.dart';

class AppBottomBarViewModel extends ChangeNotifier {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
