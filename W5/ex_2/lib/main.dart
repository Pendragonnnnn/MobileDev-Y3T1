import 'package:flutter/material.dart';

void main() { 
  runApp(MaterialApp( 
    home: Scaffold(
      body: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Center(
            child: Text("CADT Students",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            )
            ),
          ),
        ),
       ),
    ), 
  )); 
}