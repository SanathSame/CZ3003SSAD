import 'dart:ui';
import 'package:ssadgame/game_engine/Menu.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/game_engine/player_sprite/enemy_sprite_sheet.dart';
import 'package:ssadgame/game_engine/Questions.dart';

class Npc_child extends SimpleEnemy {

  Position initPosition;
  bool _seePlayerClose = false;
  double tileSize = 32;
  Npc_child(this.initPosition, double tileSize)
      : super(
          initPosition: initPosition,
          height: tileSize,
          width: tileSize,
          life: 100,
          speed: 100,
          collision: Collision(height: tileSize, width: tileSize),
          initDirection: Direction.right,
          animIdleLeft: EnemySpriteSheet.idleLeft,
          animIdleRight: EnemySpriteSheet.idleRight,
          animRunRight: EnemySpriteSheet.runRight,
          animRunLeft: EnemySpriteSheet.runLeft,
        );

  @override
  void render(Canvas canvas) {
    this.drawDefaultLifeBar(canvas);
    super.render(canvas);
  }

  void update(double dt) {

    super.update(dt);
    // if dead i stop
    if (this.isDead) return;
    _seePlayerClose = false;
    this.seePlayer(
      observed: (player) {
        _seePlayerClose = true;
        this.seeAndMoveToPlayer(
          closePlayer: (player) {
            // showQuestions();
            //FightMe();
            //showResult();


            showAnswer();
            die();
            //execAttack();
          },
          radiusVision: tileSize * 2,
        );
      },
      radiusVision: tileSize * 2,
    );
/*
    if (!_seePlayerClose) {
      this.seeAndMoveToAttackRange(
        minDistanceFromPlayer: tileSize * 4,
        positioned: (p) {
          //execAttackRange();
        },
        radiusVision:tileSize * 5,
      );
    }*/
  }

  void die() {

    remove();

    super.die();
  }

  void FightMe() {
    //retrieve questions
    //display the question
    String question = "Are you ready for a challenge?";
    TalkDialog.show(
      gameRef.context,
      [
        Say(
          question,
          Container(
            width: 50,
            height: 50,
            child: AnimationWidget(
              playing: true,
            ),
          ),
        ),
      ],
    );
  }

  void showResult() {
    TalkDialog.show(
      gameRef.context,
      [
        Say(
          "Well done, it's time for you to move on to the next challenge!",
          Container(
            width: 50,
            height: 50,
            child: AnimationWidget(
              playing: true,
            ),
          ),
        ),
      ],
    );
  }

  void showAnswer() {
    // Navigates to question page
    Navigator.push(
        gameRef.context, MaterialPageRoute(builder: (context) => Questions())
    );


  }
}
