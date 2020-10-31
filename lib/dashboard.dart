import 'package:cognito/graph.dart';

import 'package:flutter/material.dart';
import 'package:cognito/global.dart';

void main() => runApp(new Dashboard());

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  @override
  State createState() => new DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  DashboardPageState() {
    displayCard();
  }

  List<Widget> cardList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

//  responseArray1.elementAt(i),
  displayCard() {
    for (var i = 0; i < 3; i++) {
      this.cardList.add(
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)),
                    // Border.all(color: Colors.white)

                    color: Colors.indigo[500],
                    child: SizedBox(
                      width: 290,
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
                                    color: Colors.white,
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
                                  color: Colors.white,
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
                                              builder: (context) => HomePage()),
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
        // backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.white,
              margin: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  new Column(
                    children: cardList,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
