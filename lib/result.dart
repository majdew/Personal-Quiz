import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetQuiz;

  Result(this._totalScore , this._resetQuiz);

  String get resultText {
    var resultText;

    if (_totalScore <= 15) {
      resultText = "You are innocent and awsome !";
    } else if (_totalScore <= 20) {
      resultText = "Pretty likeable !";
    } else if (_totalScore <= 25) {
      resultText = "You are  dark and strange ! ";
    } else {
      resultText = "You are bad !";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: _resetQuiz,
          child: Text("Restart Quiz !"),
          textColor: Colors.blue,
          
        )
      ],
    );
  }
}
