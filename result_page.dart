// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  List<String> selectedAnswers;
  ResultPage({super.key,required this.selectedAnswers});
  
  List<Map<String,Object>> getSummary(){
    final List<Map<String,Object>> summary=[];




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
          Text("you have got 5 off 6 correct "),
          SizedBox(height: 30,),
          Text("list of question and answers"),
          Container(child: Column(children: [selectedAnswers],),),
          SizedBox(height: 30,),
          TextButton(onPressed: (){}, child: Text("Restart Quiz"))],),
    );
  }
}