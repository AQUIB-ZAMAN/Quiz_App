import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var questions = [
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
        backgroundColor: Color.fromARGB(255, 181, 187, 239),
        body: Column(
          children: [
            Question(
              text: questions[index],
            ),
            Answer(
              answerQuestion,
            ),
            Answer(
              answerQuestion,
            ),
            Answer(
              answerQuestion,
            ),
            Answer(
              answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
