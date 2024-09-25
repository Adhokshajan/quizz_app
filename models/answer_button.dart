import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onPressed;
  const AnswerButton({super.key,
  required this.answerText,
  required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(answerText));
  }
}