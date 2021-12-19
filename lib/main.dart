import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answered');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quizz app'),
      ),
      body: Column(
        children: [
          Text('The question!'),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
        ],
      ),
    ));
  }
}
