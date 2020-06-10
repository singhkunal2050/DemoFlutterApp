import 'package:flutter/material.dart';
import 'package:myApp/Result.dart';
import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(_MyApp());
}

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
      _qIndex = (_qIndex + 1) % 4;
    });
    print("pressed!!");
    print(_qIndex);
  }

  void _reset(){
    setState(() {
      _qIndex=0;
      print("quiz reset");
    });
  }

  @override // decorator which tells that we are overriding a class (syntactical sugar)
  Widget build(BuildContext ctx) {
    const _questions = [
      {
        "questionText": "Whats your name?",
        "answers": ['Kunal', 'Aman', 'Abhi', 'indra'],
      },
      {
        "questionText": "Whats your age?",
        "answers": ['15', '18', '22', '25'],
      },
      {
        "questionText": "Whats your number?",
        "answers": ['12345', '54321', '25874', '15975'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KSR First App"),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                qIndex: _qIndex,
                questions: _questions,
              )
            : Result(_reset),
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

// short hand of single line function
// void main => runApp(MyApp());

// Scaffold is a basic page widget
// to explore all the positional params use ctrl + space inside Scaffold( here  )
// a steteful widget  has one function to overridde ie  createstate which returns State
// object which is connected to a stateful widget
// createstate returns the AppState obj which holds the state of widget
// to make anything private we can start the name of the class/funct/var by an underscore
// eg _myApp
