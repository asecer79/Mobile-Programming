//Containers and Design Widgets
//Container, Center, Column, Row, InkWell

import 'package:flutter/material.dart';

class MyAppUserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      theme: ThemeData(primaryColor: Colors.blue),
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.lightBlue, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1561200473-3dd82a0722a3?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJlZXBob3RvfGVufDB8fDB8fHww'),
              ),
              SizedBox(height: 20),
              Text("User Name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("Short Bio",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      print("Message icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.message, size: 50),
                        SizedBox(height: 10),
                        Text("Mesaj", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Settings icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.settings, size: 50),
                        SizedBox(height: 10),
                        Text("Settings", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("People icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.people, size: 50),
                        SizedBox(height: 10),
                        Text("People", style: TextStyle(fontSize: 20))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
