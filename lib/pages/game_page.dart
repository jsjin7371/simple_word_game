import 'package:flutter/material.dart';
import 'package:kkodeul/components/my_text_field.dart';
import 'package:kkodeul/function/seperate_into_letters.dart';
import 'package:kkodeul/widget/text_box.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final TextEditingController _textController = TextEditingController();

  void sendText() {
    if (_textController.text.isNotEmpty) {
      _textController.clear();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: Container(
                color: Colors.green[100],
                child: const Row(
                  children: [],
                ),
              ),
            ),
          ),
          _buildTextInput(),
        ],
      ),
    );
  }

  Widget _buildTextInput() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: MyTextField(
              controller: _textController,
              hintText: 'Enter your answer',
              obscureText: false,
            ),
          ),
          IconButton(
            onPressed: sendText,
            icon: const Icon(
              Icons.send,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
