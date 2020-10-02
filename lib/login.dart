import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.only(top: 35, left: 70),
              child: Text("Powering IOT for\nSmarter Enterprice",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[700])),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text("SIGN IN WITH CREDENTIALS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[700])),
                  ),
                  new Form(
                    child: new Theme(
                      data: new ThemeData(
                          brightness: Brightness.dark,
                          primarySwatch: Colors.teal,
                          inputDecorationTheme: new InputDecorationTheme()),
                      child: new Container(
                        padding: const EdgeInsets.only(left: 40.0, right: 40),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new TextFormField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Username',
                                  prefixIcon: Icon(Icons.person,
                                      color: Colors.grey[700]),
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey[700],
                                  ),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 3.0, top: 3.0),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.0)),
                                    borderSide:
                                        BorderSide(color: Colors.grey[700]),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.0)),
                                    borderSide:
                                        BorderSide(color: Colors.grey[700]),
                                  )),
                            ),
                            new Padding(
                              padding: const EdgeInsets.all(10.0),
                            ),
                            new TextFormField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Password",
                                  prefixIcon: Icon(Icons.lock_open,
                                      color: Colors.grey[700]),
                                  hintStyle: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey[700],
                                  ),
                                  filled: true,
                                  fillColor: Colors.white60,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 3.0, top: 3.0),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.0)),
                                    borderSide:
                                        BorderSide(color: Colors.brown[500]),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.0)),
                                    borderSide:
                                        BorderSide(color: Colors.brown[500]),
                                  )),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: ButtonTheme(
                                minWidth: 110,
                                height: 40,
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.green[400],
                                  child: Text("SIGN IN"),
                                  onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NextPage()),
                                    )
                                  },
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
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
