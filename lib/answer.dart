import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final change;
  final answer;
  Answer(this.change, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FractionallySizedBox(
        child: RaisedButton(
          onPressed: change,
          child: Text(answer),
          hoverColor: Colors.blue[700],
          hoverElevation: 8,
          textColor: Colors.black,
          color: Color.fromARGB(255, 251, 225, 148),
        ),
        widthFactor: .95,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(2),
      // margin: EdgeInsets.all(2),
      color: Colors.blue[400],
    );
  }
}
