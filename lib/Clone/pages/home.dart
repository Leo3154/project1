import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
        children: [
          Text("Instagram",style: TextStyle(color: Colors.black),),
          Icon(Icons.add),
          Icon(Icons.favorite),
        ],
      ),),
      body: Center(child: Text("HOME")),
    );
  }
}