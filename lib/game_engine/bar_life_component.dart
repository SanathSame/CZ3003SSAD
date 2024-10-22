import 'dart:ui';

import 'package:bonfire/bonfire.dart';
import 'package:ssadgame/game_engine//knight.dart';
import 'package:flutter/material.dart';
import 'package:ssadgame/game_engine/ControlData.dart';

class BarLifeComponent extends InterfaceComponent {
  double padding = 20;
  double widthBar = 90;
  double strokeWidth = 12;

  double maxLife = 0;
  double life = 0;
  double maxStamina = 100;
  double stamina = 0;
  int score = 3;
  ControlData cd;

  BarLifeComponent(ControlData cd)
      : this.cd = cd,
        super(
          id: 1,
          position: Position(20, 20),
          sprite: Sprite('health_ui.png'),
          width: 120,
          height: 40,
        );

  @override
  void update(double t) {
    if (this.gameRef.player != null) {
      life = this.gameRef.player.life;
      maxLife = this.gameRef.player.maxLife;
      if (this.gameRef.player is Knight) {
        stamina = (this.gameRef.player as Knight).stamina;
      }
    }
    super.update(t);
  }

  @override
  void render(Canvas c) {
    try {
      _drawLife(c);
      _drawStamina(c);
      _drawQuestions(c);
    } catch (e) {}
    super.render(c);
  }

  void _drawQuestions(Canvas canvas) {
    int totalAnswered = cd.totalQuestions;
    int score = cd.score;
    TextSpan span = new TextSpan(
        style: new TextStyle(color: Colors.blue[800], fontSize: 30),
        text: "$score/$totalAnswered");
    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, new Offset(position.left + 180, position.top + 5));
  }

  void _drawLife(Canvas canvas) {
    double xBar = position.left + 26;
    double yBar = position.top + 10;
    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + widthBar, yBar),
        Paint()
          ..color = Colors.blueGrey[800]
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);

    double currentBarLife = (life * widthBar) / maxLife;

    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + currentBarLife, yBar),
        Paint()
          ..color = _getColorLife(currentBarLife)
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);
  }

  void _drawStamina(Canvas canvas) {
    double xBar = position.left + 26;
    double yBar = position.top + 28;

    double currentBarStamina = (stamina * widthBar) / maxStamina;

    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + currentBarStamina, yBar),
        Paint()
          ..color = Colors.yellow
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);
  }

  Color _getColorLife(double currentBarLife) {
    if (currentBarLife > widthBar - (widthBar / 3)) {
      return Colors.green;
    }
    if (currentBarLife > (widthBar / 3)) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }
}
