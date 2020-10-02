import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new LoginPage(),
        theme: new ThemeData(primarySwatch: Colors.blue));
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Scaffold(
        backgroundColor: Colors.lightBlue,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("assets/abc.jpeg"),
              fit: BoxFit.cover,
              color: Colors.white10,
              colorBlendMode: BlendMode.softLight,
            ),
            Image.asset(
              'assets/coglogo.jpg',
              scale: 9,
              alignment: new Alignment(-0.92, -0.90),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55.0),
              child: Text("Powering IOT for Smarter Solution",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[700])),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Form(
                  child: new Theme(
                    data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.red, fontSize: 20.0))),
                    child: new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                              height: 2.5,
                            ),
                            decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username',
                                prefixIcon:
                                    Icon(Icons.person, color: Colors.black),
                                hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.blueGrey,
                                ),
                                filled: true,
                                fillColor: Colors.white70,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 3.0, top: 3.0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                  borderSide: BorderSide(
                                      color: Colors.brown[500], width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                  borderSide: BorderSide(
                                      color: Colors.brown[500], width: 2),
                                )),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new Padding(
                            padding: const EdgeInsets.all(10.0),
                          ),
                          new TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                              height: 2.5,
                            ),
                            decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Password",
                                prefixIcon:
                                    Icon(Icons.lock_open, color: Colors.black),
                                hintStyle: TextStyle(
                                    fontSize: 15.0, color: Colors.blueGrey),
                                filled: true,
                                fillColor: Colors.white60,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 3.0, top: 3.0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                  borderSide: BorderSide(
                                      color: Colors.brown[500], width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3.0)),
                                  borderSide: BorderSide(
                                      color: Colors.brown[500], width: 2),
                                )),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.all(20.0),
                          ),
                          new MaterialButton(
                            color: Colors.lightGreen[400],
                            textColor: Colors.white,
                            height: 70.0,
                            minWidth: 70.0,
                            child: new Text("Sign Up",
                                style: TextStyle(fontSize: 20)),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NextPage()),
                              )
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  static const routeName = '/next-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME",
            style: TextStyle(
              color: Colors.black,
              height: 2.5,
            )),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              child: Text("Go Back!"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
