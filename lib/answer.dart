import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // The pointer selectHandler must have a function.
  final Function selectHandler;

  /*
   * Constructor
   */
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: RaisedButton(
        child: Text('是'),
        color: Colors.blueGrey,
        onPressed: selectHandler,
      ),
    );
  }
}
