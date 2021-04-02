import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ssadgame/Boundary_classes/LevelPage.dart';
import 'package:ssadgame/game_engine/knight.dart';
import 'package:ssadgame/game_engine/knight_interface.dart';
import 'package:ssadgame/game_engine/npc.dart';
import 'package:ssadgame/game_engine/ControlData.dart';
import 'dart:math';

import 'package:ssadgame/game_engine/npc_child.dart';

import 'boundary.dart';
//import 'package:minifantasy/orc.dart';
//import 'package:minifantasy/player.dart';

class Game extends StatelessWidget {
  @override
  final int map;

  //const
  Game({Key key, this.map = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    var tileSize = ((sizeScreen.height < sizeScreen.width)
            ? sizeScreen.height
            : sizeScreen.width) /
        9;
    tileSize = tileSize.roundToDouble();
    //input the version of the world that we want. Enter the data of the world chosen
    //dynamically set this variable at the start
    //world 1 and 3 currently working now
    int currentWorld = 4;
    //TiledWorldMap map =
    ControlData cd = new ControlData();
    return LayoutBuilder(
      builder: (context, constraints) {
        return BonfireTiledWidget(
          joystick: Joystick(
            // keyboardEnable: true,
            directional: JoystickDirectional(
              spriteBackgroundDirectional: Sprite('joystick_background.png'),
              spriteKnobDirectional: Sprite('joystick_knob.png'),
              size: 100,
              isFixed: false,
            ),
            actions: [
              JoystickAction(
                actionId: 0,
                sprite: Sprite('joystick_atack.png'),
                align: JoystickActionAlign.BOTTOM_RIGHT,
                size: 50,
                margin: EdgeInsets.only(bottom: 50, right: 50),
              ),
              JoystickAction(
                actionId: 1,
                sprite: Sprite('joystick_atack_range.png'),
                spriteBackgroundDirection: Sprite('joystick_background.png'),
                enableDirection: true,
                size: 50,
                margin: EdgeInsets.only(bottom: 50, right: 160),
              )
            ],
          ),
          //player: Knight(Position((8.00 * 32), (5.00 * 32)), 32),
          player:
              Knight(Position((tileSize * 2), (tileSize * 3)), tileSize, cd),
          interface: KnightInterface(cd),
          map: TiledWorldMap(
            'world_$currentWorld.json',
            forceTileSize: Size(32, 32),
          )
            // ..registerObject(
            //     'Npc', (x, y, width, height) => Npc(Position(x, y), tileSize))
            ..registerObject(
                'Npc-child',
                (x, y, width, height) =>
                    Npc_child(Position(x, y), tileSize, cd))
            ..registerObject("Boundary",
                (x, y, width, height) => Boundary(Position(x, y), tileSize)),
          background: BackgroundColorGame(Colors.blueGrey[900]),
          lightingColorGame: Colors.black.withOpacity(0.3),
          cameraZoom:
              1.0, // you can change the game zoom here or directly on camera
        );
      },
    );
  }

  //list of NPC that apepars.

}
