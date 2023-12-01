//AspectRatio widget

import 'package:flutter/material.dart';

class AspectRatioDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AspectRatioDemoPage")),
      body: Center(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 4,
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
