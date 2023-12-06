import 'package:flutter/material.dart';
import 'package:flutter_application_1/aspect_ratio.dart';
import 'package:flutter_application_1/constrainedbox_example.dart';
import 'package:flutter_application_1/flex_example.dart';
import 'package:flutter_application_1/registation.dart';
import 'package:flutter_application_1/stack_example.dart';
import 'package:flutter_application_1/statefull_page_ex1.dart';
import 'package:flutter_application_1/wrap_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 9',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RegistrationForm(),
    );
  }
}
