import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Drawer(
  child: Container(
    color: Colors.red,
  child: ListView(
    children: [
      DrawerHeader(
        padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.red
          ),
          child:UserAccountsDrawerHeader(
              accountName: Text("Shashi Kha"),
              accountEmail:Text("shashikha1000gmail.com") ,
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=401&q=80")
            )

              
          )
          


      ),
      ListTile(
        leading: Icon(Icons.account_box_rounded,color: Colors.white,),
        title: Text("Home",style: TextStyle(color: Colors.white),),

        
      )
    ],

  ),


)
);

  }

}