import 'package:flutter/material.dart';

class MainNavigationController extends ChangeNotifier {
  ValueNotifier<int> selectedIndex = ValueNotifier(0);

  void changeSelectedIndex(int index) {
    selectedIndex.value = index;
    selectedIndex.notifyListeners();
  }
}
