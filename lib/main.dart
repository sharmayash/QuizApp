import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _questions = const [
    {
      "questionText": "What's your favourite Color ?",
      "answers": ["Blue", "White", "Yellow", "Red"]
    },
    {
      "questionText": "What's your favourite Food ?",
      "answers": ["Dosa", "Momos", "Pizza", "Burger"]
    },
    {
      "questionText": "What's your favourite Drink ?",
      "answers": ["Coca Cola", "Pepsi", "Fanta", "Mirinda"]
    },
    {
      "questionText": "What's your favourite Bike ?",
      "answers": ["Hayabusa", "R.E Himalayan", "Pulsar", "Activa"]
    },
    {
      "questionText": "Who's your favourite Animal ?",
      "answers": ["Dog", "Cat", "Parrot", "Rabbit"]
    },
  ];

  int _questionIndex = 0;

  void _onAnswered() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Center(
                  child: Column(
                    children: [
                      Question(_questions[_questionIndex]["questionText"]),
                      ...(_questions[_questionIndex]["answers"] as List<String>)
                          .map((ans) => Answer(_onAnswered, ans))
                          .toList()
                    ],
                  ),
                ),
              )
            : Center(
                child: Text(
                  "Well Done you completed our Quiz!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
              ));
  }
}
