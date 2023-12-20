import 'package:flutter/material.dart';
import 'package:w11app/namedroute.dart';
import 'package:w11app/navigivasyon1.dart';
import 'package:w11app/ongenerated_root.dart';
import 'package:w11app/sidebar_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'w11 app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
     // home: OngeneratedRouteMain(),
      // onGenerateRoute: _onGenerateRoute,

      /*named route*/
      /*initialRoute: "/",
      routes: {
        "/"               : (context) => NamedRouteMain(),
        "/NamedRoutePage1": (context) => NamedRoutePage1(),
        "/NamedRoutePage2": (context) => NamedRoutePage2(),
      },*/

      initialRoute: "/",
      routes: {
        "/": (context) => SideBarMenuPageMain(),
        "/Page1": (context) => Page1(),
        "/Page2": (context) => Page2(),
        "/Page3": (context) => Page3(),
      },
    );
  }

  Route<dynamic>? _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => OngeneratedRouteMain());
      case "/OngeneratedRoutePage1":
        return MaterialPageRoute(builder: (context) => OngeneratedRoutePage1());
      case "/OngeneratedRoutePage2":
        return MaterialPageRoute(builder: (context) => OngeneratedRoutePage2());
      default:
    }
  }
}
