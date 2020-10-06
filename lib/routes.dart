import 'package:flutter/material.dart';
import 'package:cognito/login.dart';
import 'package:cognito/drawer.dart';

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new DrawerPage(),
  '/': (BuildContext context) => new LoginPage(),
};
