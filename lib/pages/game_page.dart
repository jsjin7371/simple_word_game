import 'package:flutter/material.dart';
import 'package:kkodeul/components/my_text_field.dart';
import 'package:kkodeul/models/word_model.dart';
import 'package:kkodeul/widget/text_box.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final TextEditingController _textController = TextEditingController();
  WordModel wordModel = WordModel();
  List<dynamic> answerText = []; // 정답을 저장할 변수
  List<String> enteredText = List<String>.filled(5, "     "); // 입력된 텍스트를 저장할 변수
  bool is5letters = false; // 5글자인지 확인하는 boolean 변수
  int count = 0;

  void sendText() {
    if (_textController.text.isNotEmpty) {
      // 입력된 텍스트를 저장
      setState(() {
        String? tmpText = _textController.text;
        //is5letters = enteredText != null && enteredText?.length == 5;
        is5letters = tmpText.length == 5;
        if (is5letters) {
          enteredText[count] = tmpText;
          count++;
        }
      });
    }
    _textController.clear();
  }

  @override
  void initState() {
    super.initState();
    answerText = wordModel.getRandomWord();
    print(answerText);
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
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      TextBox(
                        text: enteredText[0].split(''),
                        answer: answerText,
                      ),
                      TextBox(
                        text: enteredText[1].split(''),
                        answer: answerText,
                      ),
                      TextBox(
                        text: enteredText[2].split(''),
                        answer: answerText,
                      ),
                      TextBox(
                        text: enteredText[3].split(''),
                        answer: answerText,
                      ),
                      TextBox(
                        text: enteredText[4].split(''),
                        answer: answerText,
                      ),
                    ],
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
