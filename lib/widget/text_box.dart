import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final List<String> text;

  const TextBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (String letter in text)
          Tile(
            word: letter,
          ),
      ],
    );
  }
}

class Tile extends StatelessWidget {
  final String word;

  const Tile({
    Key? key,
    required this.word,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 50,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2, color: Colors.grey),
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
