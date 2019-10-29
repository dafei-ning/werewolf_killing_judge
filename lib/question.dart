import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Final means it never changes when initialized.
  final String questionText;

  // Constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.all(25),
    );
  }
}
