import 'package:flutter/material.dart';
import 'package:kkodeul/function/seperate_into_letters.dart';
import 'package:kkodeul/widget/text_box.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final List<String> _inputText = [];

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _scrollController, // ScrollController ����
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
            ),
            child: SizedBox(
              width: 360,
              height: 390,
              child: Container(
                color: Colors.green[100],
                child: const Row(
                  children: [
                    TextBox(),
                  ],
                ),
              ),
            ),
          ),
          TextField(
            onTap: () {
              _scrollController.animateTo(120.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            },
            onChanged: (value) {
              setState(() {
                _inputText.add(separateIntoLetters(value));
              });
            },
            decoration: const InputDecoration(
              labelText: 'Enter text',
            ),
          ),
        ],
      ),
    );
  }
}
