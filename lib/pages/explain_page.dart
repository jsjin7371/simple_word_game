import 'package:flutter/material.dart';
import 'game_page.dart';

class ExplainPage extends StatelessWidget {
  const ExplainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[100],
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 25,
                bottom: 10,
              ),
              child: Text(
                'How to Play',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(
                  bottom: 0,
                  top: 20,
                ),
                child: Text(
                  'You just have to Guess 5 letters Word!',
                  style: TextStyle(fontSize: 18),
                )),
            Padding(
              padding: const EdgeInsets.only(
                left: 80,
                right: 80,
                bottom: 0,
                top: 30,
              ),
              child:
                  Image.asset('lib/images/no_correct_word_explain_image.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'If the background color of the letter is grey,\nThe answer don\'t contain the word',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 80,
                right: 80,
                bottom: 0,
                top: 30,
              ),
              child: Image.asset('lib/images/explain_word.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'If the background color of the letter is orange,\nThe answer contain the word\nBut not the right place',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 80,
                right: 80,
                bottom: 0,
                top: 30,
              ),
              child: Image.asset('lib/images/explain_correct_word.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'If the background color of the letter is green,\nIt is in right place',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
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
                    'Ok!',
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
    );
  }
}
