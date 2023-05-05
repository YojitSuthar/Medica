import 'package:flutter/cupertino.dart';

class HourProvider with ChangeNotifier {
  int currentIndex = 0;

  void hourChange(index) {
    currentIndex = index;
    notifyListeners();
  }
}