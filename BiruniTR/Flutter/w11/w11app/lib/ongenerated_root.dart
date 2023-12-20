import 'package:flutter/material.dart';

class OngeneratedRouteMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NamedRouteMain"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/OngeneratedRoutePage1");
                  },
                  child: Text("Goto page1")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/OngeneratedRoutePage2");
                  },
                  child: Text("Goto page2")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.canPop(context);
                  },
                  child: Text("Back")),
            ],
          ),
        ));
  }
}

class OngeneratedRoutePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OngeneratedRoutePage1"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Goto OngeneratedRouteMain")),
        ));
  }
}

class OngeneratedRoutePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OngeneratedRoutePage2"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Goto OngeneratedRouteMain")),
        ));
  }
}
