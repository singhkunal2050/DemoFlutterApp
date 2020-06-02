import 'dart:ffi';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTxt;

  Question(
      this.questionTxt); // stores the par into qtxt    // its a short hand constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // full width
      margin: EdgeInsets.all(20),
      child: Text(
        this.questionTxt,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}


// to dig into any class or library all u have to do is hold ctrl and click the keyword 
// fluuter / layout catalog is a good place to know about widgets