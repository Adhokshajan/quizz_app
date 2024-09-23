// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void Function() switchScreen;
  HomePage({super.key,required this.switchScreen});

  @override
  Widget build(BuildContext context) {
    return    Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            
            children:[Image.asset("assets/images/quiz.png",width: 300),
            SizedBox(height: 50,width: 20,),
            TextButton(onPressed: switchScreen,
            child: Text("Start Quiz ",
            style: TextStyle(color: Colors.white),)
            ,style: TextButton.styleFrom(backgroundColor: Colors.black),)]
          ),
        
      );
    
  }
}