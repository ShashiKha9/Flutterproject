import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:SafeArea(
          child: Column(


            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter Username",
                  icon: Icon(Icons.account_circle),
                ),
              ),
              //
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                  icon: Icon(Icons.password),
                ),
              ),
              //
              TextFormField(

                decoration: InputDecoration(
                  labelText: "Email id",
                  hintText: "Enter Email id",
                  icon: Icon(Icons.email),
                ),
              ),
              //
              SizedBox(
                height: 20.0,

              ),
              ElevatedButton(
                child: Text("Login"),
                onPressed: (){
                  print("Login Done");

                },
              )

            ],
          ),

        )

      );

  }
}