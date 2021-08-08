
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutterapp/models/catlog.dart';
import 'package:flutterapp/widgets/drawer.dart';
import 'package:flutterapp/widgets/item_widget.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Mobile Catalog",style: TextStyle(color: Colors.black,letterSpacing: 2.00,fontWeight: FontWeight.w600, ),

        ),

        centerTitle: true,
        backgroundColor: Colors.white,




      ) ,
      body: ListView.builder(
        itemCount: dummyList.length,
          itemBuilder: (context,index) {
          return ItemWidget(item: dummyList[index],);
          },



    )
    );

  }

}