import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // The pointer selectHandler must have a function.
  final Function selectHandler;
  final String answerText;

  /*
   * Constructor
   */
  Answer(this.selectHandler, String answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blueGrey[100],
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
