import 'dart:io';

import 'package:cognito/graph.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChoicePage(),
  ));
}

class ChoicePage extends StatefulWidget {
  @override
  ChoicePageState createState() => ChoicePageState();
}

class ChoicePageState extends State<ChoicePage> {
  bool pressure = false;
  bool temperature = false;
  bool humidity = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home: Scaffold(
      appBar: AppBar(
        title: Text('Characteristics'),
        backgroundColor: Colors.indigo[500],
      ),
      body: Container(
          padding: new EdgeInsets.all(22.0),
          child: Column(
            children: <Widget>[
              new SizedBox(
                width: 345.0,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child:
                      const Text('Temperature', style: TextStyle(fontSize: 20)),
                  color: Colors.indigo[100],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 345.0,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: const Text(
                    'Pressure',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.indigo[100],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              new SizedBox(
                width: 345.0,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: const Text('Humidity', style: TextStyle(fontSize: 20)),
                  color: Colors.indigo[100],
                ),
              )
            ],
          )),
    );
  }
}
