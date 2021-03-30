import 'package:bonfire/bonfire.dart';
import 'package:ssadgame/game_engine/player_sprite/player_sprite.dart';
import 'package:flame/animation.dart' as FlameAnimation;

import 'npc_child.dart';

class Npc extends SimpleEnemy {
  final Position initPosition;
  bool spawn = false;

  Npc(this.initPosition, double tileSize)
      : super(
          initPosition: initPosition,
          height: tileSize,
          width: tileSize,
          life: 100,
          speed: 100,
          collision: Collision(),
          initDirection: Direction.right,
          animation: PlayerSpriteSheet.simpleDirectionAnimation,
        );

  void update(double dt) {
    if (!spawn) {
      spawn = true;
    }
  }
}
