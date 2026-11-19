import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard(),
          ],
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  const new({
    super.key
  });

  

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {

  bool isFavorite = false;

  void onPressed() {
    setState(() {
      isFavorite = !isFavorite;
    });
    
  }

  Color get iconColor => isFavorite ? Colors.red : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(bottom: BorderSide())
      ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("title", style: TextStyle(color: Colors.blue),),
                    Text("description", style: TextStyle(color: Colors.black),),
                    
                  ],
                ),
              )
              ),
              Container(
                width: 50,
                child: IconButton(
                  onPressed: onPressed, 
                  icon: Icon(Icons.favorite, color: iconColor)
                  ),
              )
          ],
        ),
        );
  }

  
}
