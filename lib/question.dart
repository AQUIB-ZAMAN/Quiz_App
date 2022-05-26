import 'package:flutter/material.dart';

// creating a new custom widget
class Question extends StatelessWidget {
  var text;
  Question({this.text: ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
      padding: EdgeInsets.all(8),
      color: Color.fromARGB(255, 174, 225, 234),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.brown[500],
          fontSize: 25.0,
          fontFamily: "Helvetica",
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
