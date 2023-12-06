import 'package:flutter/material.dart';
//Stack Widget

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StackExample"),
        ),
        body: Center(
          child: Stack(
            children: [
              SizedBox(
                width: 250,
                height: 350,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              Positioned(left: 0, top: 150, child: Text("User Name: asecer")),
              Positioned(top: 0, right: 0, child: Text("Address: asecer")),
              Positioned(
                  bottom: 5,
                  right: 5,
                  child: ElevatedButton(onPressed: () {}, child: Text("Visit")))
            ],
          ),
        ));
  }
}
