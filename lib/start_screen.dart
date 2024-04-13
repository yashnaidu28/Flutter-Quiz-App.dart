import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
final Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz_logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 70,
          ),
           Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color:  const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
            )
          ),
          const SizedBox(
            height: 28,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor:const Color.fromARGB(255, 255, 255, 255)),
              icon: const Icon(Icons.app_registration_outlined),
              label: const Text('Start Quiz')),
        ],
      ),
    );
  }
}
