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
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
      return Scaffold(
        body:SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,


          child: Column(



            children: [
              Image.asset("images/neww.jpg",
              fit: BoxFit.cover,),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter Username",
                  icon: Icon(Icons.account_circle),
                ),
                validator: (value) {
                  if(value.isEmpty){
                    return "Enter Username";
                  }
                }



              ),
              //
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                  icon: Icon(Icons.password),
                ),
                  validator: (value) {
                    if(value.isEmpty){
                      return "Enter Password";
                    }
                    else if(value.length < 8){
                      return  "Password length should be altleast 8 ";
                    }
                  }
              ),

              //
              TextFormField(

                decoration: InputDecoration(
                  labelText: "Email id",
                  hintText: "Enter Email id",
                  icon: Icon(Icons.email),

                ),
                  validator: (value) {
                    if(value.isEmpty){
                      return "Enter Email id";
                    }
                    else if(!value.contains("@")) {
                      return "Enter valid Email id";
                    }
                  }
              ),
              //
              SizedBox(
                height: 20.0,

              ),
               InkWell(
                 onTap: () async {
                   if (formKey.currentState.validate()) {
                     setState(() {
                       changeButton = true;
                     });
                     await Future.delayed(Duration(seconds: 1));
                     Navigator.pushNamed(context, MyRoutes.homeRoute);
                   }

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
              //
            ],
          ),

        )
        )
        )

      );

  }
}