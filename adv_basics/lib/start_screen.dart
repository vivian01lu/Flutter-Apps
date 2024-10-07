import 'dart:math';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 200, color: const Color.fromARGB(91, 255, 255, 255)),
          SizedBox(
            height: 80,
          ),
          const Text(
            "OSU Learn Flutter the fun way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            //added icon for my button
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
