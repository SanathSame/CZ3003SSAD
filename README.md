# 3003applicationfrontend

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

## Necessary changes to run the application

Go to external libaries > Dart Packages > flame-0.26.0 > Game > Game_render_box.dart

  @override
  bool get sizedByParent => true;
  //i have added this in
  Size computeDryLayout(BoxConstraints constraints){
    return constraints.smallest;
  }

include the above code after 

  GameRenderBox(this.context, this.game) {
    gameLoop = GameLoop(gameLoopCallback);
  }

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
