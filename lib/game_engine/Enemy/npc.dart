import 'package:bonfire/bonfire.dart';
import 'package:flame/position.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/game_engine/player_sprite/common_sprite_sheet.dart';
import '../main.dart';
import '../player_sprite/enemy_sprite_sheet.dart';

class NPC extends SimpleEnemy {
  double attack = 20;
  bool _seePlayerClose = false;

  NPC(Position initPosition, double tileSize)
      : super(
      animation: EnemySpriteSheet.simpleDirectionAnimation,
      initPosition: initPosition,
      height: tileSize * .8,
      width: tileSize * .8,
      //speed: DungeonMap.tileSize * 1.6,
      life: 100,
      collision: Collision(
          height: tileSize * 0.4,
          width: tileSize * 0.4,
          align: Offset(
            tileSize * 0.2,
            tileSize * 0.4,
          )));

  @override
  void update(double dt) {
    super.update(dt);
    if (this.isDead) return;

    _seePlayerClose = false;



  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    this.drawDefaultLifeBar(canvas);
  }

  @override
  void die() {
    gameRef.add(
      AnimatedObjectOnce(
        animation: CommonSpriteSheet.smokeExplosion,
        position: position,
      ),
    );
    remove();
    super.die();
  }

  void execAttackRange() {
    if (gameRef.player != null && gameRef.player.isDead) return;
    this.simpleAttackRange(
      animationRight: CommonSpriteSheet.fireBallRight,
      animationLeft: CommonSpriteSheet.fireBallLeft,
      animationTop: CommonSpriteSheet.fireBallTop,
      animationBottom: CommonSpriteSheet.fireBallBottom,
      animationDestroy: CommonSpriteSheet.explosionAnimation,
      id: 35,
      width: width * 0.9,
      height: width * 0.9,
      damage: attack,
      speed: tileSize * 3,
      collision: Collision(
        width: width / 2,
        height: width / 2,
        align: Offset(
          width * 0.2,
          width * 0.2,
        ),
      ),
      lightingConfig: LightingConfig(
        radius: width,
        blurBorder: width * 0.5,
      ),
    );
  }

  void execAttack() {
    if (gameRef.player != null && gameRef.player.isDead) return;
    this.simpleAttackMelee(
      heightArea: width,
      widthArea: width,
      damage: attack / 2,
      interval: 400,
      attackEffectBottomAnim: CommonSpriteSheet.blackAttackEffectBottom,
      attackEffectLeftAnim: CommonSpriteSheet.blackAttackEffectLeft,
      attackEffectRightAnim: CommonSpriteSheet.blackAttackEffectRight,
      attackEffectTopAnim: CommonSpriteSheet.blackAttackEffectTop,
    );
  }

  @override
  void receiveDamage(double damage, dynamic from) {
    this.showDamage(
      damage,
      config: TextConfig(
        fontSize: width / 3,
        color: Colors.white,
      ),
    );
    super.receiveDamage(damage, from);
  }
}