import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Tom', 'Amy', 'Jade', 'Maia'],
      },
    ];

  void _answerQuestion() {
    if(_questionIndex < questions.length){
      print('We have');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quizz app'),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer))
              .toList()
        ],
      ),
    ));
  }
}
