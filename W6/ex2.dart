import 'package:flutter/material.dart';

enum ButtonType {primary, secondary, disabled}

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title, required this.icon, this.iconPosition = "left", this.buttonType = ButtonType.primary}) : 
    color = setColor(buttonType)
  ;

  static Color setColor(ButtonType buttonType){
    if(buttonType == ButtonType.secondary){
      return Colors.green;
    }
    if (buttonType == ButtonType.disabled){
      return Colors.grey;
    }
    return Colors.blue;
  }

  final String title;
  final IconData icon;
  final String iconPosition;
  final ButtonType buttonType;
  final Color color;

  

  // const CustomButton.primary({super.key ,required this.title, required this.icon}) : bgColor = Colors.blue;
  // const CustomButton.secondary({super.key ,required this.title, required this.icon}) : bgColor = Colors.green;
  // const CustomButton.disabled({super.key ,required this.title, required this.icon}) : bgColor = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Container(   
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color
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
          title: Text('Custom buttons', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,

        ),
      ),
    )
  );
}

