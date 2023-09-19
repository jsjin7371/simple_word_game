import 'package:flutter/material.dart';

class UserDataModel extends ChangeNotifier {
  int timesofTry = 0;
  int timesofAnswer = 0;

  void addCountofTry() {
    timesofTry++;
  }

  void addCountofAnwser() {
    timesofAnswer++;
  }
}
