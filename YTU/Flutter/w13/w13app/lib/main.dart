//PERMANENT DATA STORAGE

//01-Shared Preferences (Local): Dictionary based data storage approach. Key value based data storing.
//used only local. Only in mobile device. (Low capable for CRUD)

//02-SQFLite relational file based database(Local):  A relational database for mobile app it is text file based and efficient. (Very effective for CRUD ops.)

//03-Web Service based remote databases (Global). By using web services we can use remote databases. These databases can be Remote Server Databases ie. SQL server etc.

//04-Cloud base databases (Global). Firebase (No SQL database, can be used as realtime ops., can be used messaging center component)

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:w13app/shared_preferences_page.dart';
import 'package:w13app/students_managment_page.dart';

var isRememberMe = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var localStorage = await SharedPreferences.getInstance();
  isRememberMe = localStorage.getBool("isRememberMeChecked") ?? false;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: StudentManagementPage(),
      // home: isRememberMe == true ? HomePage() : SharedPreferencesPage(),
    );
  }
}
