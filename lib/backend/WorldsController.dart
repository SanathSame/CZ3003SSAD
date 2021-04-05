import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ssadgame/backend/WorldsModel.dart';

class WorldsController{
  static final WorldsController _worldsController = WorldsController._internal();
  factory WorldsController() {
    return _worldsController;
  }
  WorldsController._internal(); //singleton to ensure 1 instance and common access point

  Future<void> loadWorlds(Map<String, List<WorldsModel>> _worldsMap) async {
    await FirebaseFirestore.instance.collection('worlds').get().then((value) {
      value.docs.forEach((element) {
        WorldsModel worlds = new WorldsModel(
          worldsID: element.id,
          world: element['world']
        );
        if (_worldsMap.containsKey(element['world'])) {
          _worldsMap[element['world']].add(worlds);
          print(_worldsMap);
        }
      });
    });
  }
}