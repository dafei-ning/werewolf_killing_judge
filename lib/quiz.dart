/*
 * The quiz includes questions and answers.
 */

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerHandler;
  final int questionIndex;

  // () and ({}) ?
  Quiz({
    @required this.questions,
    @required this.answerHandler,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Questions.
        Question(questions[questionIndex]['questionText']),
        // Answers (mapped to buttons).
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerHandler(answer['好人值']), answer['text']);
        }).toList()
      ],
    );
  }
}
