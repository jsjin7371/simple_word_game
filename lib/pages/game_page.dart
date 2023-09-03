import 'package:flutter/material.dart';
import 'package:kkodeul/components/my_text_field.dart';
import 'package:kkodeul/widget/text_box.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final TextEditingController _textController = TextEditingController();
  String? enteredText; // 입력된 텍스트를 저장할 변수
  bool is5letters = false;

  void sendText() {
    if (_textController.text.isNotEmpty) {
      // 입력된 텍스트를 저장
      setState(() {
        enteredText = _textController.text;
        is5letters = enteredText != null && enteredText?.length == 5;
      });
    }
    _textController.clear();
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
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
                child: Center(
                  child: TextBox(
                    text: is5letters
                        ? enteredText!.split('')
                        : ['', '', '', '', ''],
                  ),
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
