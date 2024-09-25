// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreen();
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("The Question..."),
        SizedBox(height: 150,width: 20,),
        AnswerButton(answerText: "answerText", onPressed: (){}),
        SizedBox(height: 20,width: 20,),
        AnswerButton(answerText: "answerText", onPressed: (){}),
        SizedBox(height: 20,width: 20,),
        AnswerButton(answerText: "answerText", onPressed: (){}),
        SizedBox(height: 20,width: 20,),
        AnswerButton(answerText: "answerText", onPressed: (){}),
      ],),
    );
  }
}