


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/loginpage.dart';
import 'package:flutterapp/utils/route.dart';
import 'Homepage.dart';



void main() {
  runApp( MaterialApp(
   home:  HomePage())
  );

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch:Colors.red
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:  MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),


      }
    );






  }

}






//





