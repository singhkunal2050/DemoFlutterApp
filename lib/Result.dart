import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final Function reset;
  Result(this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        "Hurrayyyyyy!",
        style: TextStyle(fontSize: 28),
      ),
      FlatButton(
        child: Text(
          "reset",
          style: TextStyle(fontSize: 40, backgroundColor: Colors.amber),
        ),
        onPressed: this.reset,
      )
    ]));
  }
}
