import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  // The Build() method returns the widgets(widgest tree) which should be rendered onto the screen.
  Widget build(BuildContext context) {
    var questions = ['场上是否单边预言家？', '是否有明确站边？'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('角色行为判定'),
          ),
          body: Column(
            children: <Widget>[
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('是'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('否'),
                onPressed: () => print('选择了\'否\''),
              ),
              RaisedButton(
                child: Text('不确定'),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
