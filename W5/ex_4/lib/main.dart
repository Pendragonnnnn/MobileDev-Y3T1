import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  width: 100,
                )
              ],
            ),
          ),
          Container(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green
                    ),
                  ),
                 
                ),
                Container(
                  width: 100,
                  color: Colors.purpleAccent,
                )
              ],
            ),
          ),
          Container(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow
                    ),
                  )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow
                    ),
                  )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow
                    ),
                  )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Container(
            decoration: BoxDecoration(
              color: Colors.pinkAccent
            ),
          ))
          

        ],
      )
    ),

  ));
  }