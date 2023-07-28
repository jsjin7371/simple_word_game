import 'package:flutter/material.dart';
import 'package:kkodeul/function/seperate_into_letters.dart';

class WordModel extends ChangeNotifier {
  //list of word
  final List _words = [
    //['단어','초성','중성','종성','초성','중성','종성',]
    ['국장', 'ㄱ', 'ㅜ', 'ㄱ', 'ㅈ', 'ㅏ', 'ㅇ'],
    ['풀잎', 'ㅍ', 'ㅜ', 'ㄹ', 'ㅇ', 'ㅣ', 'ㅍ'],
    ['실행', 'ㅅ', 'ㅣ', 'ㄹ', 'ㅎ', 'ㅐ', 'ㅇ'],
  ];

  //adding word
  late final String _addingword;

  get wrods => _words;
  get addingword => _addingword;

  //add word to wordlist
  void addWord() {
    if (!_words.contains(_addingword)) {
      //separate word
      List tmp = [];
      tmp.add(_addingword);
      tmp.add(separateIntoLetters(_addingword));

      //adding word
      _words.add(tmp);
      _words.sort();
    } else {
      //already have same word
    }
    notifyListeners();
  }
}
