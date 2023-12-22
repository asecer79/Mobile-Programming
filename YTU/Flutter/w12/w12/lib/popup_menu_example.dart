//Popup Menu example

import 'package:flutter/material.dart';

class PopuMenuPage extends StatefulWidget {
  @override
  State<PopuMenuPage> createState() => _PopuMenuPageState();
}

class _PopuMenuPageState extends State<PopuMenuPage> {
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
        title: Text("PopuMenuPage example"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (menuItem) {
              setState(() {
                _selectedColor = menuItem!;
              });
            },
            itemBuilder: (context) {
              return colors.keys
                  .map((item) =>
                      PopupMenuItem<String>(value: item, child: Text(item)))
                  .toList();
            },
          )
        ],
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
