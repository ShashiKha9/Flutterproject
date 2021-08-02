import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/utils/route.dart';



class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage>{
  @override
  String name ="";
  bool changeButton = false;

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
               InkWell(
                 onTap: () async {
                   setState(() {
                     changeButton=true;
                   });
              await  Future.delayed(Duration(seconds: 1));
                   Navigator.pushNamed(context, MyRoutes.homeRoute);
                 },


               child: AnimatedContainer(
                 duration: Duration(seconds: 1),

                alignment: Alignment.center,
                height: 40,
                width: changeButton? 40:100,
                child: changeButton? Icon(Icons.call_merge_sharp):
                Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),

                ),


                decoration: BoxDecoration(
                  color: Colors.red,
                  // shape: changeButton? BoxShape.circle: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton? 50:10)
                ),

              )
    ),




              // ElevatedButton(
              //   child: Text("Login"),
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //
              //   },
              // )

            ],
          ),

        )

      );

  }
}