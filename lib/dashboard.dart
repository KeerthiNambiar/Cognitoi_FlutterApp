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
    for (var i = 0; i < 2; i++) {
      this.cardList.add(
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  color: Colors.black12,
                  child: SizedBox(
                    width: 334,
                    height: 120,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              responseArray1.elementAt(i),
                              style: TextStyle(
                                // color: _theme.colorScheme.onSurface,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              responseArray.elementAt(i),
                              style: TextStyle(
                                // color: _theme.colorScheme.onSurface,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                              child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.black12,
                                  child: Text("Show Data"),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () => {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => HomePage()),
                                        // )
                                      })),
                        ],
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
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  new Column(
                    children: cardList,

                    // mainAxisAlignment: MainAxisAlignment.center,
                    // children: <Widget>[
                    //   this.displayCard(),
                    //   // child: RaisedButton(
                    //   //     textColor: Colors.white,
                    //   //     color: Colors.green[400],
                    //   //     child: Text(responseArray.elementAt(0)),
                    //   //     onPressed: () => {
                    //   //           Navigator.push(
                    //   //             context,
                    //   //             MaterialPageRoute(
                    //   //                 builder: (context) => HomePage()),
                    //   //           )
                    //   //         })),
                    // ],
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
