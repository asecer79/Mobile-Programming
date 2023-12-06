import 'package:flutter/material.dart';
//AspectRatio Widget

class AspectRatioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AspectRatioExample"),
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 100 / 100,
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        ));
  }
}
