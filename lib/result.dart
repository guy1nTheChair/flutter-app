import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;
  //final String resultText = "You Did it!! ";
  Result(this.totalScore, this.resetHandler);

  String get resultText {
    return ("You Did it!! " + totalScore.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(25),
        child: Center(
            child: Column(
          children: <Widget>[
            Text(
              resultText,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text('Retake Quiz',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              onPressed: resetHandler,
            )
          ],
        )));
  }
}
