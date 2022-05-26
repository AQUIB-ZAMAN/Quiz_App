import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetQuiz;
  Result({
    required this.resultScore,
    required this.resetQuiz,
  });

  String get resultPhrase {
    var resultText;
    if (resultScore <= 8)
      resultText = 'You are awesome and innocent!';
    else if (resultScore <= 12)
      resultText = 'You are ... strange?!';
    else
      resultText = 'You are so bad!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            padding: EdgeInsets.all(8),
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
