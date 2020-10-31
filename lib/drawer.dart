// import 'dart:html';

import 'package:cognito/dashboard.dart';
import 'package:cognito/entity.dart';
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
                  child: Text(
                    'Cognito \nNetworks',
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/coglogo.jpg'),
                        alignment: Alignment.center,
                        scale: 12),
                  ),
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
