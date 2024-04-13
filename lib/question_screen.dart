import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question({Key? key, required this.onSelectAnswer}) : super(key: key);
  final void Function(String answer) onSelectAnswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var currentquestionIndex = 0;

  void questionAnswer(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentquestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentquestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...currentquestion.shuffeledAnswer.map(
              (answer) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.5),
                child: AnsweerButton(
                  answerText: answer,
                  onTap: () {
                    questionAnswer(answer);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
