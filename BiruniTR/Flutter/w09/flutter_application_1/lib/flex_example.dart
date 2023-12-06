import 'package:flutter/material.dart';
//Flex Widget

class FlexExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FlexExample")),
      body: Column(
        children: [
          Flexible(
            flex: 75,
            child: Container(
              color: Colors.red,
              child: Row(children: [
                Flexible(
                  flex: 80,
                  child: Container(
                    color: Colors.brown,
                    child: Text("Flex inner1", style: TextStyle(fontSize: 25)),
                    alignment: Alignment.center,
                    //width: double.infinity,
                  ),
                ),
                Flexible(
                  flex: 20,
                  child: Container(
                    color: Colors.black,
                    child: Text("Flex inner2", style: TextStyle(fontSize: 25)),
                    alignment: Alignment.center,
                    //width: double.infinity,
                  ),
                ),
              ]),
              alignment: Alignment.center,
              //width: double.infinity,
            ),
          ),
          Flexible(
            flex: 15,
            child: Container(
              color: Colors.yellow,
              child: Text("Flex 2", style: TextStyle(fontSize: 25)),
              alignment: Alignment.center,
              //width: double.infinity,
            ),
          ),
          Flexible(
            flex: 10,
            child: Container(
              color: Colors.blue,
              child: Text("Flex 3", style: TextStyle(fontSize: 25)),
              alignment: Alignment.center,
              //width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
