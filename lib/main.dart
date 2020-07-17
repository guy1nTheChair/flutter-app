import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Blue", "score": 6},
        {"text": "White", "score": 0},
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 8},
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Cat", "score": 2},
        {"text": "Dog", "score": 2},
        {"text": "Rat", "score": 4},
        {"text": "Monkey", "score": 3},
      ]
    },
    {
      "questionText": "What's your favourite ice cream?",
      "answers": [
        {"text": "Pista", "score": 6},
        {"text": "Butterscotch", "score": 5},
        {"text": "Chocolate", "score": 3},
        {"text": "Vanilla", "score": 1}
      ]
    },
    {
      "questionText": "What's your favourite game?",
      "answers": [
        {"text": "CSGO", "score": 6},
        {"text": "Apex", "score": 4},
        {"text": "Mario", "score": 3},
        {"text": "GTA V", "score": 1}
      ]
    }
  ];

  void _resetStage() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(_answerQuestion, _questions, _questionIndex)
                : Result(_totalScore, _resetStage)));
  }
}
