//Stack widget


import 'package:flutter/material.dart';

class StackDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Widgets")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            Positioned(
                top: 10,
                left: 10,
                child: Text("My name is Aydın",
                    style: TextStyle(fontSize: 18, color: Colors.white))),
            Positioned(
                bottom: 10,
                right: 10,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Visit my profile")))
          ],
        ),
      ),
    );
  }
}
