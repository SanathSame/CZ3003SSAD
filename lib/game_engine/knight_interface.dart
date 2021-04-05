import 'dart:ui';

import 'package:bonfire/bonfire.dart';
import 'package:ssadgame/game_engine/bar_life_component.dart';
import 'package:ssadgame/game_engine/knight.dart';
import 'package:ssadgame/game_engine/ControlData.dart';

class KnightInterface extends GameInterface {
  ControlData cd;

  KnightInterface(ControlData cd)
      : this.cd = cd,
        super();

  void resize(Size size) {
    add(BarLifeComponent(cd));
    add(InterfaceComponent(
      sprite: Sprite('blue_button1.png'),
      spriteSelected: Sprite('blue_button2.png'),
      height: 40,
      width: 40,
      id: 5,
      position: Position(150, 20),
      onTapComponent: () {
        if (gameRef.player != null) {
          // (gameRef.player as Knight).showEmote();
        }
      },
    ));
    super.resize(size);
  }
}
