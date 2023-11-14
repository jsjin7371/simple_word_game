import 'package:flutter/material.dart';

class UserDataModel extends ChangeNotifier {
  int timesofTry = 0;
  int timesofAnswer = 0;

  // 유저 데이터 초기화 함수
  void initUserData() {
    timesofTry = 0;
    timesofAnswer = 0;
  }

  // 시도 횟수 추가 함수
  void addCountofTry() {
    timesofTry++;
  }

  // 정답 맞춘 횟수 추가 함수
  void addCountofAnwser() {
    timesofAnswer++;
  }
}
