import 'package:bonfire/bonfire.dart';
import 'package:ssadgame/game_engine/player_sprite/player_sprite.dart';
import 'package:flame/animation.dart' as FlameAnimation;
import 'package:ssadgame/game_engine/player_sprite/enemy_sprite_sheet.dart';
import 'package:ssadgame/game_engine/ControlData.dart';
import 'npc_child.dart';

class Npc extends SimpleEnemy {
  final Position initPosition;
  bool spawn = false;
  ControlData cd;

  Npc(this.initPosition, double tileSize, ControlData cd)
      : this.cd = cd,
        super(
          initPosition: initPosition,
          height: tileSize,
          width: tileSize,
          life: 100,
          speed: 100,
          collision: Collision(),
          initDirection: Direction.right,
          animIdleLeft: EnemySpriteSheet.idleLeft,
          animIdleRight: EnemySpriteSheet.idleRight,
          animRunRight: EnemySpriteSheet.runRight,
          animRunLeft: EnemySpriteSheet.runLeft,
        );

  void update(double dt) {
    if (!spawn) {
      spawn = true;
    }
  }
}
