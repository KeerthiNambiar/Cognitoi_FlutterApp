import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage() : super();

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
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('IOT Networks'),
                onTap: () {
                  Navigator.pop(context);
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

// class NextPage extends StatelessWidget {
//   static const routeName = '/next-page';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("HOME",
//             style: TextStyle(
//               color: Colors.black,
//               height: 2.5,
//             )),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             MaterialButton(
//               child: Text("Go Back!"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               color: Colors.red,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
