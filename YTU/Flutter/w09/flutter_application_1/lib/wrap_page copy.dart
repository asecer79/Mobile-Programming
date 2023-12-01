//Wrap widget
import 'package:flutter/material.dart';

class WrapDemoPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WrapDemoPage")),
      body: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              fit: BoxFit.cover,
              height: 50,
            ),
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              fit: BoxFit.cover,
              height: 150,
            ),
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              fit: BoxFit.cover,
              height: 110,
            ),
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              fit: BoxFit.cover,
              height: 150,
            ),
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              fit: BoxFit.cover,
              height: 250,
            ),
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              fit: BoxFit.cover,
              height: 110,
            ),
            Image.network(
              'https://media.licdn.com/dms/image/D5603AQE8fkV68aCVXA/profile-displayphoto-shrink_200_200/0/1664999313333?e=1706140800&v=beta&t=_mChnKbgWI5Zkz2n8zINaZfADzzsDajdthZ7UiVK0Bs',
              fit: BoxFit.cover,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
