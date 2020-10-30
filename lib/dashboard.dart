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

  displayCard() {
    for (var i = 0; i < responseArray1.length; i++) {
      this.cardList.add(
            Card(
              color: Colors.blueAccent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        responseArray.elementAt(i),
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      Text(responseArray1.elementAt(i),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                          )),
                    ],
                  ),
                ),
              ),
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
        body: new Stack(
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
