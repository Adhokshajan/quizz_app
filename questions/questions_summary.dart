// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/questions/questons.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String,Object>> qusummary;
  QuestionsSummary({super.key, required this.qusummary});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ...qusummary.map((data){
          return Row(children: [
            Text(((data['question No.'] as int).toString())),
            Column(children: [
              Text(data["Question"]as String),
              SizedBox(height: 20,),
              Text(data["Chosen Answer"]as String),
              SizedBox(height: 20,),
              Text(data["Correct Answer"]as String),
      
            ],)
          ],);
      
        })
        
      ],),
    );
  }
}