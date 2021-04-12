import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateMCQPage extends StatefulWidget {
  @override
  _CreateMCQPageState createState() => _CreateMCQPageState();
}

class _CreateMCQPageState extends State<CreateMCQPage> {
  String _question = "Press here to type...";
  List<String> answers = [
    "Press here to type...",
    "Press here to type...",
    "Press here to type...",
    "Press here to type..."
  ];
  List<Color> correctAnswer = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/SelectQuestionPage');
          },
        ),
        centerTitle: true,
        title: Text(
          "MCQ",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.only(top: 35),
                  alignment: Alignment.center,
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: _question),
                      onChanged: (text) {
                        setState(() {
                          _question = text;
                        });
                      }),
                ),
              ),
            ),

            ///Answers
            Expanded(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: answers[index]),
                              onChanged: (text) {
                                setState(
                                      () {
                                    answers[index] = text;
                                  },
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.check, size: 40),
                              color: correctAnswer[index],
                              onPressed: () {
                                setState(
                                      () {
                                    if (correctAnswer[index] == Colors.grey) {
                                      correctAnswer[index] = Colors.green;
                                    } else {
                                      correctAnswer[index] = Colors.grey;
                                    }
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),


            /// Confirm button
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(width: 1),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 90,
                      child: Center(
                        child: Text("Confirm"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
