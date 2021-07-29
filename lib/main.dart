
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      title: "MainApp",
       home: Scaffold(
         appBar: AppBar(
           title: Text("Musk App"),
         ),
         body: MyHomePage(),
       ),
    );


  }
}


//


class MyHomePage extends StatefulWidget{
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  var name="";
  var email="";
  var password ="";

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
 return Form(
   key:_formKey,
   child: Padding(
     padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30)
     ,
     child: ListView(
       children: <Widget>[
         TextFormField(
           decoration: InputDecoration(
             labelText: "Name",
             hintText: "Enter Your Name",
             labelStyle: TextStyle(fontSize: 12),
             icon: Icon(Icons.person)
           ),
           validator: (value) {
             if(value.isEmpty){
               return "Please Enter Your Name";
             }

         },
         controller: nameController,

         ),
         //
         TextFormField(
             decoration: InputDecoration(
                 labelText: "Email",
                 hintText: "Enter Your Email",
                 labelStyle: TextStyle(fontSize: 12),
                 icon: Icon(Icons.email)
             ),
             validator: (value) {
               if(value.isEmpty){
                 return "Please Enter Your Email";
               } else if(!value.contains("@")){
                 return "Please Enter Valid Email";
               }

             },
           controller: emailController,


         ),
         //
         TextFormField(
           obscureText: true,
             decoration: InputDecoration(
                 labelText: "Password",
                 hintText: "Enter Your Password",
                 labelStyle: TextStyle(fontSize: 12),
                 icon: Icon(Icons.lock)
             ),
             validator: (value) {
               if(value.isEmpty){
                 return "Please Enter Your Password";
               }












             },
           controller: passwordController,


         ),
         RaisedButton(onPressed:() {
           if(_formKey.currentState.validate()){
             setState(() {
               name = nameController.text;
               email= emailController.text;
               password= passwordController.text;

             });
           }
           
         },
           child: Text("Submit"),


         

         ),
         Text("Name: $name"),
         Text("Email: $email"),
         Text("password: $password"),

       ],
     ),


   )
 );
  }

}




