


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/loginpage.dart';
import 'package:flutterapp/utils/route.dart';
import 'Homepage.dart';


// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutterapp/recycler/RecyclerClass.dart';
// import 'package:flutterapp/SplashScreen.dart';

void main() {
  runApp(
      MyApp()
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
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),


      }
    );






  }

}






//





