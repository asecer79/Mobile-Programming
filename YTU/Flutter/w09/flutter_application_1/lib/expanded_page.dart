//Extended widget

import 'package:flutter/material.dart';

class ExtendedDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded Widget Demo")),
      body: Column(
        children: [
          Text("Wihout Extended", style: TextStyle(fontSize: 20)),
          SizedBox(height: 25),
          Row(
            children: [
              Container(color: Colors.red, width: 100, height: 100),
              Container(color: Colors.yellow, width: 100, height: 100),
              Container(color: Colors.blue, width: 100, height: 100),
            ],
          ),
          SizedBox(height: 25),
          Text("With Extended", style: TextStyle(fontSize: 20)),
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                  flex: 250,
                  child: Container(color: Colors.red, width: 100, height: 100)),
              Expanded(
                  flex: 500,
                  child:
                      Container(color: Colors.yellow, width: 100, height: 100)),
              Expanded(
                  flex: 750,
                  child:
                      Container(color: Colors.blue, width: 100, height: 100)),
            ],
          )
        ],
      ),
    );
  }
}
