import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText': '该角色是否站边正确预言家？',
      'answers': [
        {'text': '站边正确', '好人值': 12},
        {'text': '对立站边', '好人值': 2},
        {'text': '不明确站边', '好人值': 20}
      ]
    },
    {
      'questionText': '该角色是否攻击相同站边的角色？',
      'answers': [
        {'text': '攻击了正确站边的人', '好人值': 5},
        {'text': '没有攻击', '好人值': 15},
        {'text': '还不确定', '好人值': 10}
      ]
    },
    {
      'questionText': '该角色是否有攻击过明确是狼人阵营动作？',
      'answers': [
        {'text': '有攻击狼人阵营的人', '好人值': 20},
        {'text': '回避狼人阵营的人', '好人值': 1},
        {'text': '还不确定', '好人值': 5}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerHandler: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result()),
    );
  }
}
