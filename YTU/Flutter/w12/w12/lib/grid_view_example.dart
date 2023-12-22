//GridView

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid view"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, //number of columns
              crossAxisSpacing: 10, //horizotal space
              mainAxisSpacing: 10, //vertical space
            ),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(index.toString()),
              );
            },
          ),
        ));
  }
}


//Additionally please investigate the following widgets yourself.

//List View-with Loading Indicator
//Toast Message 
//AlertDialog
//GestureDetector
