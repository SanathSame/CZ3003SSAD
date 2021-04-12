import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestPerformingWorldPage extends StatefulWidget {
  @override
  _BestPerformingWorldPageState createState() => _BestPerformingWorldPageState();
}

class _BestPerformingWorldPageState extends State<BestPerformingWorldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Best Performing World",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: (MediaQuery.of(context).size.height - 85) / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.25,
                    color: Colors.black,
                  ),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Best", style: TextStyle(fontSize: 22)),
                        Text(""),
                        Text("Average Points:", style: TextStyle(fontSize: 18)),
                        Text("214" + "/250", style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 2.5),
                    child: Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text("Req Specification",
                                style: TextStyle(fontSize: 20)),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SizedBox(
                                  height: 30,
                                  width: 70,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("More Details",
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - 85) / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      width: 1.25,
                      color: Colors.black,
                    )),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Second", style: TextStyle(fontSize: 22)),
                        Text("Best", style: TextStyle(fontSize: 22)),
                        Text(""),
                        Text("Average Points:", style: TextStyle(fontSize: 18)),
                        Text("212" + "/250", style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 2.5),
                    child: Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text("World 2",
                                style: TextStyle(fontSize: 20)),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SizedBox(
                                  height: 30,
                                  width: 70,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("More Details",
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - 85) / 3,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Third", style: TextStyle(fontSize: 22)),
                        Text("Best", style: TextStyle(fontSize: 22)),
                        Text(""),
                        Text("Average Points:", style: TextStyle(fontSize: 18)),
                        Text("214" + "/250", style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 2.5),
                    child: Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text("World 3",
                                style: TextStyle(fontSize: 20)),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SizedBox(
                                  height: 30,
                                  width: 70,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("More Details",
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
