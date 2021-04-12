import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectQuestionPage extends StatefulWidget {
  @override
  _SelectQuestionPageState createState() => _SelectQuestionPageState();
}

class _SelectQuestionPageState extends State<SelectQuestionPage> {
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
          "Question Creator",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1.25,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Text(
                  "Requirement Elicitation - Level 1",
                  style: TextStyle(fontSize: 20), //HARDCODED
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 30),
              child:
              Text("Select Question Type", style: TextStyle(fontSize: 24)),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, '/CreateMCQPage');
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text(
                              'MCQ',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, '/CreateFITBPage');
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fill in the',
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                'Blanks',
                                style: TextStyle(fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/CreateTFPage');
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'True/False',
                              style: TextStyle(fontSize: 24),
                            ),
                            Text(
                              'Question',
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
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
