import 'package:cognito/graph.dart';

import 'package:flutter/material.dart';

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
              margin: const EdgeInsets.only(top: 20),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Text("Show Data"),
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                )
                              })),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
