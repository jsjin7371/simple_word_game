import 'package:flutter/material.dart';
import 'explain_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              bottom: 0,
              top: 60,
            ),
            child: Image.asset('lib/images/kkodeul_intro.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              '꼬들',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '간단하고 재미있는 퀴즈를 즐겨보세요!',
              style: TextStyle(fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 90,
          ),

          //start button
          GestureDetector(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ExplainPage();
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
