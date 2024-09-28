// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
          SizedBox(height: 30,),
          TextButton(onPressed: (){}, child: Text("Restart Quiz"))],),
    );
  }
}