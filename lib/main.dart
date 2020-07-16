import 'package:flutter/material.dart';
import './quiz.dart';
import './answer.dart';
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
  final _questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": ["Blue", "White", "Black", "Red"]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": ["Cat", "Dog", "Rat", "Monkey"]
    },
    {
      "questionText": "What's your favourite ice cream?",
      "answers": ["Pista", "Butterscotch", "Chocolate", "Vanilla"]
    },
    {
      "questionText": "What's your favourite game?",
      "answers": ["CSGO", "Apex", "Valorant", "COD"]
    }
  ];

  void _answerQuestion() {
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
                : Result()));
  }
}
