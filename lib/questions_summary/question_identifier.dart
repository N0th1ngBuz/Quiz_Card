import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
  });

  final int questionIndex;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
   final questionNumber = questionIndex +1;
   return Container(
    width: 30,
    height: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: isCorrectAnswer
      ? const Color.fromARGB(255, 109, 158, 244)
      : const Color.fromARGB(255, 219, 118, 152),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Text(
      questionNumber.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
          color: Color.fromARGB(31, 0, 0, 0),
      ),
    ) ,
   );
  }
}