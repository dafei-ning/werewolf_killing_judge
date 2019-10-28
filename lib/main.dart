import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  // The Build() method returns the widgets(widgest tree) which should be rendered onto the screen.
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'),);
  }
}