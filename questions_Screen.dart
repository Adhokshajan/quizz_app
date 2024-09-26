// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/questions/questons.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreen();
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion=questions[0];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(currentQuestion.text,style: TextStyle(color: Colors.black),),
        SizedBox(height: 150,width: 20,),
        AnswerButton(answerText:currentQuestion.answers[0], onPressed: (){}),
        SizedBox(height: 20,width: 20,),
        AnswerButton(answerText: currentQuestion.answers[1], onPressed: (){}),
        SizedBox(height: 20,width: 20,),
        AnswerButton(answerText: currentQuestion.answers[2], onPressed: (){}),
        SizedBox(height: 20,width: 20,),
        AnswerButton(answerText: currentQuestion.answers[3], onPressed: (){}),
      ],),
    );
  }
}