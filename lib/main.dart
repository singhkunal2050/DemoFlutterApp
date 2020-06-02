import 'package:flutter/material.dart';
import 'package:myApp/Answer.dart';

import './Question.dart';
import './Answer.dart';

void main() {
  runApp(_MyApp());
}

// short hand of single line function
// void main => runApp(MyApp());

// Scaffold is a basic page widget
// to explore all the positional params use ctrl + space inside Scaffold( here  )
// a steteful widget  has one function to overridde ie  createstate which returns State
// object which is connected to a stateful widget
// createstate returns the AppState obj which holds the state of widget
// to make anything private we can start the name of the class/funct/var by an underscore
// eg _myApp

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _qIndex = 0;

  void _answerQuestion() {
    setState(() {
      _qIndex = (_qIndex + 1) % 3;
    });
    print("pressed!!");
    print(_qIndex);
  }

  @override // decorator which tells that we are overriding a class (syntactical sugar)
  Widget build(BuildContext ctx) {
    var questions = [
      {
        "questionText" : "Whats your name?",
        "answers" : ['Kunal' , 'Aman' , 'Abhi' , 'indra'],
      },
      {
        "questionText" : "Whats your age?",
        "answers" : ['15' , '18' , '22' , '25'],
      },
      {
        "questionText" : "Whats your number?",
        "answers" : ['12345' , '54321' , '25874' , '15975'],
      }     
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY First App"),
        ),
        body: Column(
          children: [
            Question(questions[_qIndex]['questionText']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            // OR 

            // questions.map((question) {})


          ],
        ),
      ),
    );
  }
}
// to implement named argument can be implemented by adding
// the params within {} in the function prototype
// named args are optional
// they can be set in any order
// @required is used to make the params mandatory
// shift + alt + f for auto format dart

// two types of widgets
// IO Widgets
// Layout and Control Widgets
