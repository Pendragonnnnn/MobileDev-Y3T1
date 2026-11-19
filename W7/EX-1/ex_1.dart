import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            children: [
              CustomButton(),
              SizedBox(height: 10,),
              CustomButton(),
              SizedBox(height: 10,),
              CustomButton(),
              SizedBox(height: 10,),
              CustomButton(),
            ],
          ),
        ),
      ),
    ));

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isSelected = false;

  String get textLabel => isSelected ? "Selected" : "Not Selected";
  
  Color get textColor => isSelected ? Colors.white : Colors.black;
  
  Color get backgroundColor => isSelected ? Colors.blue[500]! : Colors.blue[50]!;


  void handleSelect() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: handleSelect,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, 
        ),
        child: Center(
          child: Text(
            textLabel, 
            style: TextStyle(
              color: textColor, 
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
