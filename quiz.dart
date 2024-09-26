// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions_Screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
 final List<String> selectedAnswers=[];
  Widget? activeScreen ;
  @override
  void initState() {
   activeScreen = HomePage(switchScreen: switchScreen,);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreen(chooseAnswer: chooseAnswer,);
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.purple
          ),
          child: activeScreen,
        ),
      )
     
    );
  }
}