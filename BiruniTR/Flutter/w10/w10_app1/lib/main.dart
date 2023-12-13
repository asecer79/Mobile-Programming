import 'package:flutter/material.dart';
import 'package:w10_app1/assets_example.dart';
import 'package:w10_app1/context_example.dart';
import 'package:w10_app1/dropdown_menu_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter W10',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const DropdownMenuExample(),
    );
  }
}
