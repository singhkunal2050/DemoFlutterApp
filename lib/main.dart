import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// short hand of single line function
// void main => runApp(MyApp());

// Scaffold is a basic page widget
// to explore all the positional params use ctrl + space inside Scaffold( here  )

class MyApp extends StatelessWidget {
  var qIndex = 0;


  void answerQuestion() {
    print("pressed!!");
    print(qIndex);
    qIndex=(qIndex + 1)%2;
  }

  @override // decorator which tells that we are overriding a class (syntactical sugar)
  Widget build(BuildContext ctx) {
    var questions = [
      "Whats your name?",
      "Whats your age?",
      "Whats your number?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY First App"),
        ),
        body: Column(
          children: [
            Text(questions[qIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),           // for single line funct
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                ///body                                             // anon funct
                print('Answer 3 chosen');
              },
            ),
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
