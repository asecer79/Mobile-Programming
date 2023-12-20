import 'package:flutter/material.dart';

class NamedRouteMain extends StatelessWidget {
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
                    Navigator.pushNamed(context, "/NamedRoutePage1");
                  },
                  child: Text("Goto page1")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/NamedRoutePage2");
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

class NamedRoutePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NamedRoutePage1"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Goto NamedRouteMain")),
        ));
  }
}

class NamedRoutePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NamedRoutePage2"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Goto NamedRouteMain")),
        ));
  }
}
