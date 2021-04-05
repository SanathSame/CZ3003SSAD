//This page is imported in questiosn_4
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class reorderable_list extends StatefulWidget {
  @override
  _reorderable_listState createState() => _reorderable_listState();
}

class _reorderable_listState extends State<reorderable_list> {
  List<String> options = ["Requirement Specification", "Implementation",
    "Testing", "Maintenance", "Design"];


  void onReorder(int oldIndex, int newIndex){
    if(newIndex > oldIndex){
      newIndex -= 1;
    }

    setState((){
      String answer = options[oldIndex];
      options.removeAt(oldIndex);
      options.insert(newIndex, answer);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Press and hold for 3 seconds to Drag and Drop",
      //     style: TextStyle(
      //         fontSize: 15,
      //       color: Colors.black,
      //     ),),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child:ReorderableListView(
          scrollDirection: Axis.vertical,
          onReorder: onReorder,
          children: getListItems(),
          dragStartBehavior: DragStartBehavior.down, //gives the interactivity
        ),
        color: Colors.grey[300],
      ),
    );
  }

  List<ListTile>getListItems() => options.asMap().map((index, item) =>
      MapEntry(index, buildTenableListTile(item, index))).values.toList();

  ListTile buildTenableListTile(String item, int index) => ListTile(
    key: ValueKey(item),
    title: Text(item,
        style: TextStyle(
          fontSize: 20,
        )),
    leading: Text("${index + 1}.",
      style: TextStyle(
        fontSize: 20,
      ),),
  );
}
