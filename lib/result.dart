import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  /*
   * Constructor
   */
  Result(this.resultScore);

  String get resultPhrase {
    String resultText = '该角色身份不能确定。';
    if (resultScore <= 10) {
      resultText = '该角色极有可能是狼人。';
    } else if (resultScore >= 50) {
      resultText = '该角色应该是好人。';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '该角色身份判断结果',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
