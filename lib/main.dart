import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  // The Build() method returns the widgets(widgest tree) which should be rendered onto the screen.
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': '该角色是否站边正确预言家？',
        'answers': ['Yes', 'No', '不明确站边'],
      },
      {
        'questionText': '该角色是否攻击相同站边的角色？',
        'answers': ['Yes', 'No', '还不确定'],
      },
      {
        'questionText': '该角色是否有帮助狼人阵营动作？',
        'answers': ['Yes', 'No', '还不确定'],
      }
    ];
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
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]['questionText']),

              (questions[_questionIndex]['answers'] as List<String>).map({
                return Answer(answer);

              })

              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    );
  }
}
