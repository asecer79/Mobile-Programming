//ConstrainedBox widget

import 'package:flutter/material.dart';

class ConstrainedBoxDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ConstrainedBoxDemoPage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: 250, minWidth: 100, minHeight: 100, maxHeight: 150),
              child: Image.network(
                'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
                fit: BoxFit.cover,
              ),
            ),
            Text("16:9", style: TextStyle(fontSize: 25, color: Colors.black)),
            ElevatedButton(onPressed: () {}, child: Text("Visit my profile"))
          ],
        ),
      ),
    );
  }
}
