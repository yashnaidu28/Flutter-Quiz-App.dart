import 'package:flutter/material.dart';

class AnsweerButton extends StatelessWidget {
  const AnsweerButton(
      {required this.answerText, required this.onTap, super.key});

  final void Function() onTap;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: const Color.fromARGB(255, 18, 1, 70),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: (BorderRadius.circular(30)
            ),
            
          )),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
