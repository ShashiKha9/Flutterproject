import 'package:flutter/material.dart';

class RecyclerClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
            color: Colors.red,
            child: Center(
              child: Text("hello world Ashish Kha", textDirection: TextDirection.ltr),
            )));
  }

}