import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(

        body:SafeArea(
          child: Column(
            children: [
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit Location"),
              )
            ],
          ),
        )

      );

  }
}