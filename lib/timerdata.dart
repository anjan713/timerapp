import 'package:flutter/material.dart';

class TimerData with ChangeNotifier {
  int _remainingtime = 60;
  int get remainingtime => _remainingtime;

  updateTime() {
    _remainingtime--;
    notifyListeners();
  }
}
