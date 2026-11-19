import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  const new({super.key, required this.title, required this.icon, this.bgColor = Colors.blue});

  final String title;
  final IconData icon;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(   
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor
            ),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20,),
                  Text(title,
                  style: TextStyle(color: Colors.white),)
                ],  
              )
            )
          );
  }
}
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Hobbies", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                HobbyCard(title: "Travelling", icon: Icons.travel_explore),
                SizedBox(height: 10,),
                HobbyCard(title: "Skating", icon: Icons.skateboarding, bgColor: Colors.blueGrey,)
              ],
            ),
          ),
        ),
      ),
    
  ));
}

