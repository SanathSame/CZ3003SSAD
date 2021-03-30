import 'dart:ui';
import 'package:ssadgame/game_engine/NewGame.dart';
//fly component should be able to remember where it is and how big it is

class Fly {
  //instance variable that will server as link to parent game class
  final NewGame game;
  Rect flyRect;
  Paint flyPaint;
  bool isDead = false;
  bool isOffScreen = false;

  //Constructor accepts 3 params. 1.value of whatever is passed into the game property
  //2. x  3. y
  Fly(this.game, double x, double y) {
    flyRect = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
    flyPaint = Paint();
    flyPaint.color = Color(0xff6ab04c);
  }

  //when an instance of class is created, and it's render method is called, a green square
  //should be drawn on the screen (canvas) based on values in flyRect
  void render(Canvas c) {
    c.drawRect(flyRect, flyPaint);
  }

  void update(double t) {
    if (isDead) {
      flyRect = flyRect.translate(0, game.tileSize * 12 * t);
    }
    //but the origin (0, 0) of the screen’s Cartesian plane is on the upper-left corner and the positive Y direction is downward
    if (flyRect.top > game.screenSize.height) {
      isOffScreen = true;
    }
  }

  void onTapDown() {
    isDead = true;
    flyPaint.color = Color(0xffff4757);
    game.spawnFly();
  }
}
