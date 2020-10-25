import 'package:flutter/material.dart';
import 'package:cognito/routes.dart';

void main() => runApp(new CognitoApp());

class CognitoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cognito App',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: routes,
    );
  }
}
