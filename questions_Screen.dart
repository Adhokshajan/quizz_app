// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/questions/questons.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String answer) chooseAnswer;
  QuestionScreen({super.key,
  required this.chooseAnswer});

  @override
  State<QuestionScreen> createState() => _QuestionScreen();
}

class _QuestionScreen extends State<QuestionScreen> {
  var questionindex = 0;
  void changeQuestion(String selectedAnswers){
    widget.chooseAnswer(selectedAnswers);
    setState(() {
      questionindex++;
    });

  }






  @override
  Widget build(BuildContext context) {
    final currentQuestion=questions[questionindex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(currentQuestion.text,style: GoogleFonts.robotoSlab(color: Colors.black),textAlign: TextAlign.center,),
          SizedBox(height: 150,width: 20,),
          ...currentQuestion.getShuffeldList().map((answers){
            SizedBox(height: 60,width: 20,);
            return AnswerButton(answerText: answers, onPressed:(){
              changeQuestion(answers);
            });
        
          }),
          
        ],),
      ),
    );
  }
}