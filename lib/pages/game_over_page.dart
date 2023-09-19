import 'package:flutter/material.dart';
import 'package:kkodeul/models/uesr_data_model.dart';

class GameOverPage extends StatelessWidget {
  const GameOverPage({
    super.key,
    required this.isCorrect,
    required this.answer,
    required this.userDataModel,
  });

  final bool isCorrect;
  final String answer;
  final UserDataModel userDataModel;

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
              const SizedBox(height: 28),

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
              const SizedBox(height: 42),

              //스탯 보여주기
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'Times you try',
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.loop),
                              const SizedBox(width: 5),
                              Text(
                                '${userDataModel.timesofTry}',
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'Correct answer',
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.flag),
                              const SizedBox(width: 5),
                              Text(
                                '${userDataModel.timesofAnswer}',
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
