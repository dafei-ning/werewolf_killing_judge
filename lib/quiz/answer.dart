import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // The pointer selectHandler must have a function.
  final Function functionRunOnPressed;
  final String answerText;

  /*
   * Constructor
   */
  Answer(this.functionRunOnPressed, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blueGrey[300],
        textColor: Colors.white,
        onPressed: functionRunOnPressed,
      ),
    );
  }
}
