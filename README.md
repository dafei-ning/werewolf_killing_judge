# Werewolf Killing - Judge

A Flutter project on Judging people's status in the game ```Werewolf Killing```.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Flutter Key Points

### Flutter App Basics

- The ```Build()``` method returns the widgets(widgest tree) which should be rendered onto the screen.
- Widgets are the core building blocks of Flutter user interfaces. 
- The role of ```runApp()``` is to build the main widget and calls ```build()``` on it.

### Widgets

- Widgets分```visible widgets```和```invisible widgets```. 
  - ```visible widgets```包括 RaiseButton(), Text(), Card()...
  - ```invisible widgets```包括 Row(), Column(), ListView()...
- Widgets are normal Dart classes / objects, only usable as Widgets if you extend ```StatelessWidget``` or ```StatefulWidget``` and add a ```build()``` method.
- Most Widgets have some (named) arguments that require another Widget - e.g. the "children" argument on the ```Column()``` constructor. Or "child" on ```Container()```.