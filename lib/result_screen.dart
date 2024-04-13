import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summery.dart';

class ReslutScreen extends StatelessWidget {
  const ReslutScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });
  final void Function() onRestart;
  final List<String> chosenAnswer;

  List<Map<String, Object>> get summeryData {
    final List<Map<String, Object>> summery = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summery.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answer[0],
          'user_answer': chosenAnswer[i],
        },
      );
    }
    return summery;
  }

  @override
  Widget build(context) {
    final numTotalQuestion = questions.length;
    final numCurrectQuestion = summeryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'you answered $numCurrectQuestion out off $numTotalQuestion question correctly',
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 236, 219, 225),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summeryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.refresh),
              label: const Text('restart quiz !'),
            )
          ],
        ),
      ),
    );
  }
}
