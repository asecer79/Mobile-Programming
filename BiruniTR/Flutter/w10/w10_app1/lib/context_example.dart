//Context kullanımı

import 'package:flutter/material.dart';

class ContextPageExample extends StatelessWidget {
  const ContextPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(title: Text("Context usage")),
      body: Center(
        child: Text(
          "Test",
          style: TextStyle(fontSize: 36, color: color),
        ),
      ),
    );
  }
}
