import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final List<String> text;
  final List<dynamic> answer;
  final bool is5letters;

  List<Color> checkWord(List<String> text, List<dynamic> answer) {
    List<Color> arr = List<Color>.filled(5, Colors.grey.shade300);

    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 5; j++) {
        if (text[i] == answer[j]) {
          if (i == j) {
            arr[i] = Colors.green.shade400; // 정확한 위치
          } else {
            arr[i] = Colors.orange.shade400; // 위치만 틀림
          }
          break;
        } else {
          arr[i] = Colors.grey.shade400; // 글자가 존재하지 않음
        }
      }
    }
    return arr;
  }

  const TextBox({
    Key? key,
    required this.text,
    required this.is5letters,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> hintInfo = checkWord(text, answer);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 5; i++)
          Tile(
            word: text[i],
            answer: answer[i],
            hintColor: hintInfo[i],
            is5letters: is5letters,
          ),
      ],
    );
  }
}

class Tile extends StatelessWidget {
  final String word;
  final String answer;
  final bool is5letters;
  final Color hintColor;

  const Tile({
    Key? key,
    required this.word,
    required this.is5letters,
    required this.answer,
    required this.hintColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 50,
        height: 60,
        decoration: BoxDecoration(
          color: hintColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: Colors.black,
          ),
        ),
        child: Center(
          child: Text(
            word,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
