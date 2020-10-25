//import 'package:indexed_list_view/indexed_list_view.dart';

import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(new Entity());

class Entity extends StatefulWidget {
  @override
  State createState() => new EntityState();
}

class EntityState extends State<Entity> {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  List data;

  // ignore: missing_return
  Future<String> getdata() async {
    try {
      Dio dio = new Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      try {
        Options options =
            new Options(contentType: "application/json", headers: {
          'Apikey': 'K9MkyEo5fM0YracivwW3',
        });

        final response = await dio.get(
          "https://wadiacs1.cognitonetworks.com/cognito/entitycore/list/345",
          options: options,
        );

        print(response);
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
          title: Text(
            'Card Data',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(title: new Text(data[index]["entityName"]));
          },
        ));
  }
}
