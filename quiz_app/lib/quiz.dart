import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activescreen = 'start-screen';

  // @override
  // void initState() {
  //   activescreen = StartScreen(switchscreen);
  //   super.initState();
  // }

  void switchscreen() {
    setState(() {
      activescreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 6, 1, 15),
                Color.fromARGB(255, 17, 3, 41),
                Color.fromARGB(255, 29, 4, 73),
                Color.fromARGB(255, 59, 10, 144),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activescreen == 'start-screen'
              ? StartScreen(switchscreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
