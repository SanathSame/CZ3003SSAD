import 'dart:ui';

import 'package:bonfire/bonfire.dart';
import 'package:flame/animation.dart' as FlameAnimation;

import 'npc_child.dart';

class Knight extends SimplePlayer {
  bool spawn = false;
  double stamina = 100;

  Knight(Position initPosition, double tileSize)
      : super(
          initPosition: initPosition,
          height: tileSize,
          width: tileSize,
          life: 100,
          speed: 100,
          collision: Collision(height: tileSize / 2, width: tileSize / 2),
          initDirection: Direction.right,
          animIdleLeft: Animation.sequenced(
            "knight_idle_left.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
          animIdleRight: Animation.sequenced(
            "knight_idle.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
          animRunLeft: Animation.sequenced(
            "knight_run_left.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
          animRunRight: Animation.sequenced(
            "knight_run.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
          //animation: PlayerSpriteSheet.simpleDirectionAnimation,
        );

  @override
  void update(double dt) {
    // do anything
    if (!spawn) {
      //addNpcInMap(100, 100);
    }
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    // do anything
    super.render(canvas);
  }

  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event) {
    // do anything with event of the joystick
    super.joystickChangeDirectional(event);
  }

  @override
  void joystickAction(JoystickActionEvent event) {
    // do anything with event of the joystick
    if (event.id == 1) {
      addNpcInMap(0, 0);
      addNpcInMap(50, 50);
    } else if (event.id == 2) {}
    super.joystickAction(event);
  }

  @override
  void receiveDamage(double damage, dynamic from) {
    super.receiveDamage(damage, from);
  }

  @override
  void die() {
    super.die();
  }

  void showEmote() {}

  void addNpcInMap(double x, double y) {
    //creates child
    Enemy e = Npc_child(Position(x, y), 10);
    gameRef.addGameComponent(e);
    //gameRef.addGameComponent(Npc_child(Position(x, y), 10));
  }
}
