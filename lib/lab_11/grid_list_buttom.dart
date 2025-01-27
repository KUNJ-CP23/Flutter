import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridListButton extends StatefulWidget {
  GridListButton({super.key});

  @override
  State<GridListButton> createState() => _GridListButtonState();
}

class _GridListButtonState extends State<GridListButton> {

  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview and Gridview"),
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                  isGrid = !isGrid;
                });
              },
              icon: isGrid ? Icon(Icons.list) : Icon(Icons.grid_3x3),
          ),
        ],
      ),
      body: isGrid ?
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
            mainAxisSpacing: 5
          ),
          itemBuilder: (context,index) {
            return Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent.shade100,
            );
          }
    ): ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent.shade100,
              ),
            );
          }
          )
    );

  }
}