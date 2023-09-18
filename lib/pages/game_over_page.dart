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
                  ? Image.asset('lib/icons/wired-outline-1103-confetti.gif')
                  : Image.asset('lib/icons/wired-outline-1122-thumb-down.gif'),
              const SizedBox(height: 40),

              //성공 실패 보여주는 텍스트
              isCorrect
                  ? Text(
                      "Congratulation!",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blue[400],
                      ),
                    )
                  : Text(
                      "Try Next Time",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.red[400],
                      ),
                    ),
              const SizedBox(height: 40),

              //정답 보여주기
              const Text(
                "the answer was",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              Text(
                answer,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
              const SizedBox(height: 40),

              //이전 페이지로 이동
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green[300],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 17,
                      right: 17,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Try Again',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              //스탯 보여주기
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Times you try',
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: [
                          Icon(Icons.loop),
                          SizedBox(width: 5),
                          Text(
                            '1',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        'Correct answer',
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: [
                          Icon(Icons.flag),
                          SizedBox(width: 5),
                          Text(
                            '1',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
