// import 'dart:html';

import 'package:charts_flutter/flutter.dart';
import 'package:cognito/dashboard.dart';
import 'package:cognito/entity.dart';
import 'package:cognito/global.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage() : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
      ),
      drawer: Drawer(
        child: Container(
          // color: Colors.grey[700],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: Colors.indigo[500],
                child: DrawerHeader(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.portrait,
                        color: Colors.black,
                        size: 90.0,
                      ),
                      Text(
                        '$userName',
                        style: TextStyle(fontStyle: FontStyle.italic),
                        textScaleFactor: 2,
                      )
                    ],
                  ),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage('assets/prof.jpg'),
                  //       alignment: Alignment.center,
                  //       scale: 5),
                  // ),
                  // child: Text(
                  //   '$userName',
                  //   textAlign: TextAlign.center,
                  //   textScaleFactor: 1,
                  // ),
                ),
              ),
              ListTile(
                title: Text('Dashboard'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DashboardPage(context)),
                  );
                },
              ),
              ListTile(
                title: Text('IOT Networks'),
                onTap: () {
                  // Navigator.pop(context);
                  // this.handleLogin(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Entity()),
                  );
                },
              ),
              ListTile(
                title: Text('Policy View'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Location View'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Graph View'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Video View'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
