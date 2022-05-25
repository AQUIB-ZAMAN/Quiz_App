import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;
  List<String> questions = <String>[
    'World\'s highest hockry ground is located in :',
    'Who among the following is the first black formula one world champion :',
    'Which sport does Lalita Babar represent :',
    'Who was named as the World Cup Ambassador during 2015 ICC World Cup :',
    'What kind of racing event was supported by the UCI ProTour :',
  ];

  void answerQuestion() {
    setState(() {
      if (index < questions.length - 1)
        index = index + 1;
      else
        index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to the Questions Page"),
        ),
        body: Column(
          children: [
            Question(
              text: questions[index],
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Option A"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Option B"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Option C"),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Option D"),
            ),
          ],
        ),
      ),
    );
  }
}
