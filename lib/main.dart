import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutterapp/recycler/RecyclerClass.dart';
// import 'package:flutterapp/SplashScreen.dart';

void main() {
  runApp(MyHomePage());

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

      )

    );

  }

}
class MyApp1 extends MyApp {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        addNumber(10, 90),
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30),

      )

    );

  }
  String addNumber(a,b) {
    return    "Number is ${(a+b)}";
    ;
  }

}
class MyHomePage extends StatefulWidget{
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
 return Center(
   child: Column(
     children: <Widget>[
       TextField(
         onSubmitted: (value) {

         }
       )
     ],
   ),
 );
  }

}




