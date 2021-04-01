import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class levelCreator extends StatefulWidget {
  @override
  _levelCreatorState createState() => _levelCreatorState();
}

class _levelCreatorState extends State<levelCreator> {
  String selected;
  String mcq;
  String open;
  String tru;
  String arrange;
  @override
  Widget build(BuildContext context) {
    List<String> doubleList =
    List<String>.generate(10, (int index) => '${index + 1}');
    List<DropdownMenuItem> menuItemList = doubleList
        .map((val) => DropdownMenuItem(value: val, child: Text(val)))
        .toList();
    List<String> mcqlist =
    List<String>.generate(10, (int index) => '${index + 1}');
    List<DropdownMenuItem> menulist = doubleList
        .map((val) => DropdownMenuItem(value: val, child: Text(val)))
        .toList();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PVP Level Creator'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              child: Center(
                child: Text(
                  "Requirement Elicitation",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
                width: double.infinity,
                child: Text('SET QUESTIONS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0))),
            Row(children: <Widget>[
              Text('Total Number of Questions'),
              SizedBox(width: 200.0),
              DropdownButton(
                items: menuItemList,
                value: selected,
                onChanged: (val) => setState(() => selected = val),
              )
            ]),
            Row(
              children: <Widget>[
                Text('Number of MCQs'),
                SizedBox(width: 260.0),
                DropdownButton(
                  items: menuItemList,
                  value: mcq,
                  onChanged: (val) => setState(() => mcq = val),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Number of Open-Ended Questions'),
                SizedBox(width: 150.0),
                DropdownButton(
                  items: menuItemList,
                  value: open,
                  onChanged: (val) => setState(() => open = val),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Number of True/False Questions'),
                SizedBox(width: 160.0),
                DropdownButton(
                  items: menuItemList,
                  value: tru,
                  onChanged: (val) => setState(() => tru = val),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Number of Arrange the Steps Questions'),
                SizedBox(width: 110.0),
                DropdownButton(
                  items: menuItemList,
                  value: arrange,
                  onChanged: (val) => setState(() => arrange = val),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}