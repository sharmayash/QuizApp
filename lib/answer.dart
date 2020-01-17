import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handleAnswer;
  final String answerText;

  Answer(this.handleAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: RaisedButton(
          child: Text(answerText),
          onPressed: handleAnswer,
          color: Colors.orange,
          splashColor: Colors.deepOrange,
        ),
      ),
    );
  }
}
