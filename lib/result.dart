import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetScore;

  /*
   * Constructor
   */
  Result(this.resultScore, this.resetScore);

  String get resultPhrase {
    String resultText = '该角色身份不能确定';
    if (resultScore <= 10) {
      resultText = '该角色极有可能是狼人';
    } else if (resultScore >= 45) {
      resultText = '该角色应该是好人';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            '该角色身份判断结果',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // Press flatbutton to reset totalScore and questionIndex.
          FlatButton(
            child: Text('返回'),
            colorBrightness: Brightness.dark,
            highlightColor: Colors.blueGrey[200],
            onPressed: resetScore,
            color: Colors.blueGrey[500],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ],
      ),
    );
  }
}
