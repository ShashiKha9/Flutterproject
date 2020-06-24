import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
          color: Colors.red,
          child: Center(
            child: Text("hello world", textDirection: TextDirection.ltr),
          ))));
}
