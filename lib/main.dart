import 'package:flutter/material.dart';
import './quiz.dart';
// import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;
  final questions = [
    {
      'question': 'World\'s highest hockry ground is located in :',
      'answer': [],
    },
    {
      'question':
          'Who among the following is the first black formula one world champion :',
      'answer': [],
    },
    {
      'question': 'Which sport does Lalita Babar represent :',
      'answer': [],
    },
    {
      'question':
          'Who was named as the World Cup Ambassador during 2015 ICC World Cup :',
      'answer': [],
    },
    {
      'question':
          'What kind of racing event was supported by the UCI ProTour :',
      'answer': [],
    },
  ];

  void answerQuestion() {
    setState(() {
      if (index < questions.length - 1) index = index + 1;
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
        backgroundColor: Color.fromARGB(255, 181, 187, 239),
        body: index < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                index: index,
                questions: questions,
              )
            : Center(
                child: Text(
                  'You are done.',
                ),
              ),
      ),
    );
  }
}
