import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('是'),
        color: Colors.blueGrey,
        onPressed: null,
      ),
    );
  }
}
