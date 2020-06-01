import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionTxt;

  Question(
      this.questionTxt); // stores the par into qtxt    // its a short hand constructor

  @override
  Widget build(BuildContext context) {
    return Text(this.questionTxt);
  }
}
