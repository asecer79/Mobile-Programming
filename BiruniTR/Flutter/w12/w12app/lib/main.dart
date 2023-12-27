import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:w12app/shared_preferences_example.dart';

bool isAuth = false;
void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // var db = await SharedPreferences.getInstance();

  //isAuth = db.getBool("isAuth") ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: null //isAuth ? HomePage() : LoginPage(),
        );
  }
}
