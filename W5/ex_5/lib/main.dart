import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 80,
            color: Colors.redAccent,
            child: Center(
              child: Text('Welcome !', 
              style: TextStyle(
                color: Colors.white
              )),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.all(15),
            height: 80,
            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black
              
            ),
            child: Text('My hobbies',
            style: TextStyle(
              color: Colors.white
            ),),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orangeAccent,
                  ),
                  child: Center(
                    child: Text('Soccer',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
              SizedBox(width: 60,),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text('Flutter',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              )
            ],
          ),
          ),
          Expanded(
            flex: 1,
            child: Container()
            ),
          Container(
            height: 80,
            padding: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                ),
                Expanded(
            flex: 1,
            child: SizedBox()
            ),
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                ),
                Expanded(
            flex: 1,
            child: SizedBox()
            ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )
  ));
}

