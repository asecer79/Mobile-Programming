import 'package:flutter/material.dart';

class MyAppExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      theme: ThemeData(primaryColor: Colors.blue),
      home: ExpandedExamplePage(),
    );
  }
}

class ExpandedExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EXpanded Example"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text("Without Expanded", style: TextStyle(fontSize: 20)),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.yellow),
            Container(width: 100, height: 100, color: Colors.brown)
          ],
        ),
        SizedBox(height: 75),
        Text("With Expanded", style: TextStyle(fontSize: 20)),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 1,
                child: Container(width: 100, height: 100, color: Colors.red)),
            Expanded(
                flex: 2,
                child:
                    Container(width: 100, height: 100, color: Colors.yellow)),
            Expanded(
                flex: 6,
                child: Container(width: 100, height: 100, color: Colors.brown))
          ],
        ),
        SizedBox(height: 25),
      ]),
    );
  }
}
