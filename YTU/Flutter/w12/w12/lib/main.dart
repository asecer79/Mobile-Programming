import 'package:flutter/material.dart';
import 'package:w12/asset_example.dart';
import 'package:w12/card_example.dart';
import 'package:w12/dropdown_menu_example.dart';
import 'package:w12/grid_view_example.dart';
import 'package:w12/list_view_example.dart';
import 'package:w12/list_view_from_dynamic_data_example.dart';
import 'package:w12/navigation_example.dart';
import 'package:w12/popup_menu_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}
