import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuizz;

  Result(this.totalScore, this.resetQuizz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are inocent';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        onPressed: resetQuizz,
        child: Text('Restart'),
        textColor: Colors.white,
        color: Colors.blue
      )
    ]));
  }
}
