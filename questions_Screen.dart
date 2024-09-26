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
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(currentQuestion.text,style: TextStyle(color: Colors.black),),
          SizedBox(height: 150,width: 20,),
          ...currentQuestion.answers.map((answers){
            SizedBox(height: 20,width: 20,);
            return AnswerButton(answerText: answers, onPressed: (){});
        
          }),
          
        ],),
      ),
    );
  }
}