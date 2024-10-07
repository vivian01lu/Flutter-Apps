import 'package:flutter/material.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

//added underscore turn it into a private class
class _QuizState extends State<Quiz> {
  Widget? activeState;

  @override
  void initState() {
    activeState = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeState = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(228, 223, 6, 49),
                Color.fromARGB(181, 114, 114, 117),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeState,
        ),
      ),
    );
  }
}
