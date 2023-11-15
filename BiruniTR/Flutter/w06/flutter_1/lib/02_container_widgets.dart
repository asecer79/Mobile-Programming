import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sayfa2 extends StatelessWidget {
  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 50, top: 75),
          child: Text("Merhaba", style: TextStyle(fontSize: 28)),
        ),
      ),
    );
  }
}
