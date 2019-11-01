/*
 * The quiz includes questions and answers.
 */ 

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final String questions;
  final Function answerHandler;


  Quiz(this.questions, this.answerHandler);
  
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[_questionIndex]['questionText']),
        // Answers mapped to buttons
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
