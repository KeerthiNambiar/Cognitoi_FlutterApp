import 'package:cognito/dashboard.dart';
import 'package:cognito/entity.dart';
import 'package:flutter/material.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import 'package:cognito/global.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage() : super();
  handleLogin(BuildContext context) async {
    try {
      try {
        Dio dio = new Dio();
        (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
            (HttpClient client) {
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
          return client;
        };

        Options options =
            new Options(contentType: "application/json", headers: {
          'Authorization': '$companyApikey $token $companyId $user',
        });

        final response = await dio.get(
          "https://wadiacs1.cognitonetworks.com/cognito/entityweb/gatewayentities",
          options: options,
        );

        print(response);
        print(user);
      } catch (e) {
        print(e);
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 401) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white70,
              content: Text(
                'Oops! Something went wrong',
                style: TextStyle(
                  color: Colors.black12,
                ),
              ),
              actions: <Widget>[
                new FlatButton(
                  child: Text(
                    "Ok",
                    style: TextStyle(
                      color: Colors.black12,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
      ),
      body: Center(
        child: Text('Dashboard!'),
      ),
      drawer: Drawer(
        child: Container(
          // color: Colors.grey[700],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                color: Colors.grey[700],
                child: DrawerHeader(
                  child: Text(
                    'Cognito \nNetworks',
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/coglogo.jpg'),
                        alignment: Alignment.center,
                        scale: 12),
                    // color: Colors.grey[700],
                  ),
                ),
              ),
              ListTile(
                title: Text('Dashboard'),
                onTap: () {
                  this.handleLogin(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
              ),
              ListTile(
                title: Text('IOT Networks'),
                onTap: () {
                  // Navigator.pop(context);
                  this.handleLogin(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EntityPage()),
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
