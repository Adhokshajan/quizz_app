// ignore_for_file: prefer_const_constructors

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
    return ElevatedButton(onPressed: onPressed,style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 70),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
    ), child: Text(answerText,style: TextStyle(color: Colors.purple),));
  }
}