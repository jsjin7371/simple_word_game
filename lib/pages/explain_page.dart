import 'package:flutter/material.dart';
import 'game_page.dart';

class ExplainPage extends StatelessWidget {
  const ExplainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
              bottom: 10,
            ),
            child: Text('게임 플레이 법'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              bottom: 0,
              top: 30,
            ),
            child: Image.asset('lib/images/kkodeul_intro.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('\'ㅠ\'은 올바른 자리에 있습니다'),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('\'ㅏ\'는 존재하지만 잘못된 자리에 있습니다'),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('\'ㅡ\'는 어디에도 존재하지 않습니다'),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const GamePage();
            })),
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
                  '시작하기',
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
    );
  }
}
