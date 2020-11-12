import 'package:cognito/choice.dart';
import 'package:cognito/graph.dart';

import 'package:flutter/material.dart';
import 'package:cognito/global.dart';

class DashboardPage extends StatefulWidget {
  BuildContext context;
  DashboardPage(this.context);

  @override
  State createState() => new DashboardPageState(this.context);
}

class DashboardPageState extends State<DashboardPage> {
  List<Widget> cardList = [];
  BuildContext context;
  DashboardPageState(this.context);

  @override
  void initState() {
    super.initState();
    displayCard();
  }

  @override
  void dispose() {
    super.dispose();
  }

//  responseArray1.elementAt(i),
  displayCard() {
    for (var i = 0; i < responseArray1.length; i++) {
      this.cardList.add(
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)),
                    // Border.all(color: Colors.white)

                    color: Colors.indigo[100],
                    child: SizedBox(
                      width: MediaQuery.of(this.context).size.width * 0.85,
                      height: 140,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0),
                              child: Container(
                                // alignment: Alignment.topLeft,

                                child: Text(
                                  "Entity Name: " + responseArray1.elementAt(i),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Entity Type: " + responseArray.elementAt(i),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: RaisedButton(
                                  textColor: Colors.black,
                                  color: Colors.green[500],
                                  child: Text("Show Data"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    // side: BorderSide(color: Colors.white)
                                  ),
                                  onPressed: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChoicePage()),
                                        )
                                      }),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Entities"),
          backgroundColor: Colors.indigo[500],
        ),
        backgroundColor: Colors.indigo[600],
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
                child: new Column(
              children: cardList,
            ))
          ],
        ),
      ),
    );
  }
}
