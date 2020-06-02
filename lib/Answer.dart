import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; // pointer to a function
  final String answerText;
  
  Answer(this.selectHandler , this.answerText ); // constrcutor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(15),
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
