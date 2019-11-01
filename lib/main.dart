import 'package:flutter/material.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // TODO: the questions and answers should be put into widgets.
  final questions = const [
    {
      'questionText': '该角色是否站边正确预言家？',
      'answers': ['站边正确', '对立站边', '不明确站边'],
    },
    {
      'questionText': '该角色是否攻击相同站边的角色？',
      'answers': ['攻击了正确站边的人', '没有攻击', '还不确定'],
    },
    {
      'questionText': '该角色是否有攻击过明确是狼人阵营动作？',
      'answers': ['有攻击狼人阵营的人', '回避狼人阵营的人', '还不确定'],
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < questions.length) {
      print('还有问题没有回答');
    } else {
      print('No more questions!');
    }
  }

  // The Build() method returns the widgets(widgest tree) which should be rendered onto the screen.
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          /*
           * Top bar 
           */
          appBar: AppBar(
            title: Text('角色行为判定'),
          ),
          /*
           * Body  
           */
          body: _questionIndex < questions.length
              ? Quiz(questions, _answerQuestion) : Center(child: Text('该角色身份确定'))),
    );
  }
}
