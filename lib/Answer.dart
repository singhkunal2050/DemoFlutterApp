import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; // pointer to a function
  Answer(this.selectHandler); // constrcutor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text('Text 1'),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
