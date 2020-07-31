import 'package:PersonalQuiz/quiz.dart';
import 'package:PersonalQuiz/result.dart';
import 'package:flutter/material.dart';

import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List _questions = const [
    {
      "questionText": 'What\'s your favourite color ?',
      "answers": [
        {
          "text": "Red",
          "score": 5,
        },
        {
          "text": "Black",
          "score": 10,
        },
        {
          "text": "Pink",
          "score": 15,
        },
        {
          "text": "White",
          "score": 20,
        },
      ]
    },
    {
      "questionText": 'What\'s your favourite animal ?',
      "answers": [
        {
          "text": "Dog",
          "score": 5,
        },
        {
          "text": "Cat",
          "score": 10,
        },
        {
          "text": "Lion",
          "score": 15,
        },
        {
          "text": "Snake",
          "score": 20,
        },
      ]
    },
    {
      "questionText": 'What\'s your favourite instractor ?',
      "answers": [
        {
          "text": "Majd",
          "score": 5,
        },
        {
          "text": "Max",
          "score": 10,
        },
        {
          "text": "Ali",
          "score": 15,
        },
        {
          "text": "Ahmed",
          "score": 20,
        },
      ]
    },
  ];

  int _index = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      this._totalScore = 0;
      this._index = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Personal Quiz !'),
        ),
        body: (_index < _questions.length)
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                index: _index,
              )
            : Result(
                _totalScore,
                _resetQuiz,
              ),
      ),
    );
  }
}
