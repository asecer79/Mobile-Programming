//Container, Center, Column, Row, InkWell

import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.red],
        )),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs'),
            ),
            SizedBox(height: 25),
            Text("User Name: asecer", style: TextStyle(fontSize: 25)),
            SizedBox(height: 25),
            Text("Shor Bio:", style: TextStyle(fontSize: 18)),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      print("Messages has been opened");
                    },
                    child: Icon(Icons.message, size: 60, color: Colors.amber)),
                InkWell(
                    onTap: () {
                      print("Followers has been opened");
                    },
                    child: Icon(Icons.people, size: 60, color: Colors.amber)),
                InkWell(
                    onTap: () {
                      print("Settings has been opened");
                    },
                    child: Icon(Icons.settings, size: 60, color: Colors.amber)),
              ],
            )
          ],
        )),
      ),
    );
  }
}
