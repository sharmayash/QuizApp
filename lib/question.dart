import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _ques;

  Question(this._ques);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Text(
        _ques,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
