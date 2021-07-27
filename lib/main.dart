import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutterapp/recycler/RecyclerClass.dart';
// import 'package:flutterapp/SplashScreen.dart';

void main() {
  runApp(MyApp());

}

//
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MainApp",

      home: Scaffold(

        drawer: Drawer(

        ),
        appBar: AppBar(
          title: Text("My App"),

        ),
    body: Center(
    child: new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    InkWell(
    splashColor: Colors.green,
    highlightColor: Colors.blue,
    child: Icon(Icons.ring_volume, size: 50),
    onTap: () {
    // setState(() {
    _volume += 10;
    // });
    },
    ),
 Text(
    _volume.toString(),
    style: TextStyle(fontSize: 50)
    ),//samples









  ]
      ),
    ),

    )
    );

  }

}
int _volume = 0;




