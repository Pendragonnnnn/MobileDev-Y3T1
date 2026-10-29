import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[100]
              ),
              child: Center(
                child: Text('OOP',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
                ),),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[300]
              ),
              child: Center(
                child: Text('DART',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
                ),),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[300]!,
                    Colors.blue[900]!
                ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight
                )
              ),
              child: Center(
                child: Text('FLUTTER',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white
                ),),
              ),
            )
          ],
        ),
        ),
    ),
    ),
  );
}
