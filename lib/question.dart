import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Final means it never changes when initialized.
  final String questionText;

  // Constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}