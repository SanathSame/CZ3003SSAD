import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:ssadgame/game_engine/components/fly.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';

class NewGame extends Game {
  Size screenSize;
  double tileSize;
  List<Fly> flies;
  Random rnd;

  NewGame() {
    initialize();
  }

  void initialize() async {
    flies = new List<Fly>();
    rnd = Random();
    resize(await Flame.util.initialDimensions());
    spawnFly();
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRect, bgPaint);
    //When you call the forEach method, it requires a function as a parameter.
    //It then calls that function for each of the items in the list passing the item in the current iteration as the parameter
    //this function should accept a single parameter which has same type as each item in list
    flies.forEach((Fly fly) => fly.render(canvas));
  }

  void update(double t) {
    flies.forEach((Fly fly) => fly.update(t));
    flies.removeWhere((Fly fly) => fly.isOffScreen);
  }

  void spawnFly() {
    double x = rnd.nextDouble() * (screenSize.width - tileSize);
    double y = rnd.nextDouble() * (screenSize.height - tileSize);
    flies.add(Fly(this, x, y));
  }

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 9;
  }

  void onTapDown(TapDownDetails d) {
    flies.forEach((Fly fly) {
      if (fly.flyRect.contains(d.globalPosition)) {
        //if the global position where I have tapped is on the fly, I will react
        fly.onTapDown();
      }
    });
  }
}

//The update part handles the movements of objects (like characters, enemies,
// obstacles, the map itself) and other things that need to be updated (for example a timer).
// Most of the action happens here

//The render part draws all the objects on the screen. This is a separate process so that everything is synchronized.
