//Flexible widget

import 'package:flutter/material.dart';

class FlexibleDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible Widgets")),
      body: Column(
        children: [
          Flexible(
              flex: 101,
              child: Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text("Flex 1"),
                  width: double.infinity)),
          Flexible(
              flex: 200,
              child: Container(
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: Text("Flex 2"),
                  width: double.infinity)),
          Flexible(
              flex: 50,
              child: Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text("Flex 3"),
                  width: double.infinity)),
        ],
      ),
    );
  }
}
