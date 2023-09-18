import 'dart:math';

import 'package:flutter/material.dart';

class WordModel extends ChangeNotifier {
  //list of word
  final List _words = [
    ['b', 'i', 'n', 'g', 'o'], //bingo
    ['q', 'u', 'e', 's', 't'], //quest
    ['f', 'l', 'a', 'r', 'e'], //flare
    ['c', 'r', 'a', 'z', 'y'], //crazy
    ['p', 'i', 'x', 'e', 'l'], //pixel
    ['m', 'a', 'n', 'g', 'o'], //mango
    ['m', 'e', 'd', 'a', 'l'], //medal
    ['t', 'a', 'n', 'g', 'o'], //tango
    ['v', 'o', 'i', 'c', 'e'], //voice
    ['j', 'u', 'm', 'b', 'o'], //jumbo
    ['d', 'r', 'e', 'a', 'm'], //dream
    ['d', 'i', 's', 'c', 'o'], //disco
    ['r', 'o', 'a', 's', 't'], //roast
    ['l', 'u', 'n', 'a', 'r'], //lunar
    ['l', 'o', 's', 'e', 'r'], //loser
    ['w', 'i', 'n', 'e', 'r'], //winer
  ];

  //adding word
  late final String _addingword;

  get words => _words;
  get addingword => _addingword;

  List<dynamic> getRandomWord() {
    final int randomIndex = Random().nextInt(_words.length);
    return _words[randomIndex];
  }

  //add word to wordlist
  /*void addWord() {
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
  */
}
