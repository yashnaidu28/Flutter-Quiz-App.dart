import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // ternary expression
  // Widget ? activeScreen ;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(
      () {
        activeScreen = 'question-screen';
      },
    );
  }

  void choooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(
        () {
          //selectedAnswer=[];
          activeScreen = 'result-screen';
        },
      );
    }
  }

  void restartQuiz() {
    setState(
      () {
        selectedAnswer = [];
        activeScreen = 'question_screen';
      },
    );
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = Question(
        onSelectAnswer: choooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ReslutScreen(
        chosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 82, 27, 177),
                Color.fromARGB(255, 84, 43, 156)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: //activeScreen == 'start-screen'
              //     ? StartScreen(switchScreen)
              screenWidget,
        ),
      ),
    );
  }
}
