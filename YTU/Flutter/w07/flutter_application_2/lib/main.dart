import 'package:flutter/material.dart';
import 'package:flutter_application_2/01_non_container_widgets.dart';
import 'package:flutter_application_2/02_container_widgets.dart';

void main() {
  runApp(MaterialApp(home: ContainerWidgetsPage()));
}

//to create pages we can use stateless widgets
/*
A Stateless Widget in Flutter is a widget that does not require mutable state. In other words, it does not change over time (e.g., it does not depend on any data that might change during the lifetime of the widget).
*/
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World Project"),
      ),
      body: Container(
          //div
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Hello World1", style: TextStyle(fontSize: 28)),
              Text("Hello World2", style: TextStyle(fontSize: 28)),
              Text("Hello World3", style: TextStyle(fontSize: 28)),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      backgroundColor: Colors.red,

    );
  }
}
