import 'package:flutter/material.dart';

class GameOverPage extends StatelessWidget {
  const GameOverPage({
    super.key,
    required this.isCorrect,
    required this.answer,
  });

  final bool isCorrect;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),

              //성공 실패 보여주는 이미지
              isCorrect
                  ? const Icon(Icons.brightness_1_outlined)
                  : const Icon(Icons.no_adult_content_outlined),
              const SizedBox(height: 40),

              //성공 실패 보여주는 텍스트
              isCorrect
                  ? const Text("정답~")
                  : const Text("Do you have a brain?"),
              const SizedBox(height: 40),

              //정답 보여주기
              Text("ans : $answer"),
              const SizedBox(height: 40),

              //스탯 보여주기

              //이전 페이지로 이동
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green[400],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 17,
                      right: 17,
                      top: 5,
                      bottom: 6,
                    ),
                    child: Text(
                      '다시하기',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
