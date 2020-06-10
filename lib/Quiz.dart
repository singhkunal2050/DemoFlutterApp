import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int qIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(this.questions[this.qIndex]['questionText']),
        ...(this.questions[this.qIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(this.answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
