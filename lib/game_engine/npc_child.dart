import 'dart:math';
import 'dart:ui';
import 'package:ssadgame/Boundary_classes/HomePage.dart';
import 'package:ssadgame/Boundary_classes/question_type/questions_1.dart';
import 'package:ssadgame/Boundary_classes/question_type/questions_2.dart';
import 'package:ssadgame/Boundary_classes/question_type/questions_3.dart';
import 'package:ssadgame/Boundary_classes/question_type/questions_6.dart';
import 'package:ssadgame/game_engine/Menu.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/game_engine/player_sprite/enemy_sprite_sheet.dart';
import 'package:ssadgame/game_engine/Questions.dart';
import 'package:ssadgame/game_engine/ControlData.dart';
import 'package:flame/animation.dart' as FlameAnimation;

class Npc_child extends SimpleEnemy {
  Position initPosition;
  bool _seePlayerClose = false;
  double tileSize = 32;
  ControlData cd;
  double attack = 25;

  Npc_child(this.initPosition, double tileSize, ControlData cd)
      : this.cd = cd,
        super(
          initPosition: initPosition,
          height: tileSize,
          width: tileSize,
          life: 100,
          speed: 100,
          collision: Collision(height: tileSize, width: tileSize),
          initDirection: Direction.right,
          animIdleRight: FlameAnimation.Animation.sequenced(
            "goblin_idle.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
          animIdleLeft: FlameAnimation.Animation.sequenced(
            "goblin_idle_left.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
          animRunRight: FlameAnimation.Animation.sequenced(
            "goblin_run_right.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
          animRunLeft: FlameAnimation.Animation.sequenced(
            "goblin_run_left.png",
            6,
            textureWidth: 16,
            textureHeight: 16,
          ),
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
            execAttack();
            // showQuestions();
            //FightMe();
            //showResult();
            // showAnswer();
            // die();
            //execAttack();
          },
          radiusVision: tileSize * 3,
        );
      },
      radiusVision: tileSize * 3,
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
    fightMe();
    showAnswer();
    remove();
    super.die();
  }

  void fightMe() {
    //retrieve questions
    //display the question
    String question = "Don't think this is the end! Solve this question, HAH!";
    TalkDialog.show(
      gameRef.context,
      [
        Say(
          question,
          Container(
            width: 50,
            height: 50,
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

  void execAttack() {
    this.simpleAttackMelee(
      damage: 10,
      attackEffectBottomAnim: FlameAnimation.Animation.sequenced(
        "atack_effect_bottom.png",
        6,
        textureWidth: 21,
        textureHeight: 21,
      ),
      attackEffectLeftAnim: FlameAnimation.Animation.sequenced(
        'atack_effect_left.png',
        6,
        textureWidth: 16,
        textureHeight: 16,
      ),
      attackEffectRightAnim: FlameAnimation.Animation.sequenced(
        'atack_effect_right.png',
        6,
        textureWidth: 16,
        textureHeight: 16,
      ),
      attackEffectTopAnim: FlameAnimation.Animation.sequenced(
        'atack_effect_top.png',
        6,
        textureWidth: 16,
        textureHeight: 16,
      ),
      heightArea: 32,
      widthArea: 32,
    );
  }

  void showAnswer() async {
    // Navigates to question page
    int ran = generateRand();
    switch (0) {
      case 0:
        Navigator.push(
            gameRef.context, MaterialPageRoute(builder: (context) => mcq1()));
        if (true) {
          print("it shouldn't have printed");
          cd.updateScoreCorrectAnswer();
        } else {
          cd.updateTotal();
        }
        break;
      case 1:
        Navigator.push(
            gameRef.context, MaterialPageRoute(builder: (context) => mcq2()));
        if (true) {
          cd.updateScoreCorrectAnswer();
        } else {
          cd.updateTotal();
        }
        break;
      case 2:
        Navigator.push(
            gameRef.context, MaterialPageRoute(builder: (context) => mcq3()));
        if (true) {
          cd.updateScoreCorrectAnswer();
        } else {
          cd.updateTotal();
        }
        break;
      case 3:
        Navigator.push(
            //not working
            gameRef.context,
            MaterialPageRoute(builder: (context) => mcq3()));
        if (true) {
          cd.updateScoreCorrectAnswer();
        } else {
          cd.updateTotal();
        }
        break;
      case 4:
        Navigator.push(
            //don't have type 5?
            gameRef.context,
            MaterialPageRoute(builder: (context) => mcq3()));
        if (true) {
          cd.updateScoreCorrectAnswer();
        } else {
          cd.updateTotal();
        }
        break;
      case 5:
        Navigator.push(gameRef.context,
            MaterialPageRoute(builder: (context) => questions_6()));
        if (true) {
          cd.updateScoreCorrectAnswer();
        } else {
          cd.updateTotal();
        }
        break;
      default:
        break;
    }
  }

  int generateRand() {
    //assuming there's 6 types of questions to display
    Random random = new Random();
    int randomNumber = random.nextInt(5); // from 0 upto 99 included
    return randomNumber;
  }

  void receiveDamage(double damage, int id) {
    this.showDamage(
      damage,
      config: TextConfig(
        fontSize: 10,
        color: Colors.white,
        fontFamily: 'Normal',
      ),
    );
    super.receiveDamage(damage, id);
  }
}
