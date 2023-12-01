import 'package:flutter/material.dart';
import 'package:flutter_application_1/aspect_ratio_page.dart';
import 'package:flutter_application_1/constrained_box_page.dart';
import 'package:flutter_application_1/expanded_page.dart';
import 'package:flutter_application_1/flexible_page.dart';
import 'package:flutter_application_1/stack_page.dart';
import 'package:flutter_application_1/user_profile_screen_page.dart';
import 'package:flutter_application_1/wrap_page%20copy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo', home: WrapDemoPage(), // MyHomePage(),
    );
  }
}
