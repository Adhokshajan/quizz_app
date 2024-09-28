// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
    ), child: Text(answerText,style:GoogleFonts.robotoSlab(color: Colors.purple),textAlign: TextAlign.center,));
  }
}