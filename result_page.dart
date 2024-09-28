// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:quiz_app/questions/questions_summary.dart';
import 'package:quiz_app/questions/questons.dart';

class ResultPage extends StatelessWidget {
  List<String> selectedAnswers;
  ResultPage({super.key,required this.selectedAnswers});
  
  List<Map<String,Object>> getSummary(){
    final List<Map<String,Object>> summary=[];

    for (var i=0; i<selectedAnswers.length; i++){
      summary.add({
        "question No.":i+1,
        "Question":questions[i].text,
        "Chosen Answer":selectedAnswers[i],
        "Correct Answer":questions[i].answers[0],
      });
    }




    return summary;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("you have got 5 off 6 correct ", textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Text("list of question and answers", textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          QuestionsSummary(qusummary: getSummary()),
          TextButton(onPressed: (){}, child: Text("Restart Quiz"))],),
    );
  }
}