//Dropdown Menu example

import 'package:flutter/material.dart';

class DropDownMenuPage extends StatefulWidget {
  @override
  State<DropDownMenuPage> createState() => _DropDownMenuPageState();
}

class _DropDownMenuPageState extends State<DropDownMenuPage> {
  Map<String, Color> colors = {
    "Red": Colors.red,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Yellow": Colors.yellow,
  };

  String _selectedColor = "Red";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropdownMenu example"),
      ),
      body: Container(
        color: colors[_selectedColor],
        child: Center(
          child: DropdownButton<String>(
            onChanged: (menuItem) {
              setState(() {
                _selectedColor = menuItem!;
              });
            },
            value: _selectedColor,
            items: colors.keys
                .map((item) =>
                    DropdownMenuItem<String>(value: item, child: Text(item)))
                .toList(),
          ),
        ),
      ),
    );
  }
}
