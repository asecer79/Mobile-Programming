import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation & Sidebar menu")),
      drawer: MainMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Home Page", style: TextStyle(fontSize: 36))],
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                "Main Menu",
                style: TextStyle(fontSize: 24),
              )),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ));
            },
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image1.jpg")),
            title: Text(
              "Home page",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Page1();
                },
              ));
            },
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image2.jpg")),
            title: Text(
              "Page 1",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Page2();
                },
              ));
            },
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image3.jpg")),
            title: Text(
              "Page 2",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Page3();
                },
              ));
            },
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/image4.jpg")),
            title: Text(
              "Page 3",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainMenu(),
      appBar: AppBar(title: Text("Navigation & Sidebar menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page1", style: TextStyle(fontSize: 36)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("<< Back"))
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainMenu(),
      appBar: AppBar(title: Text("Navigation & Sidebar menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Page2", style: TextStyle(fontSize: 36))],
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainMenu(),
      appBar: AppBar(title: Text("Navigation & Sidebar menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Page3", style: TextStyle(fontSize: 36))],
        ),
      ),
    );
  }
}


//****  DATA TRANSFER BETWEEN PAGES */
//ONGENERATED ROUTES
//NAMED ROUTE 
//PushReplacement 
//WILL POP
//MaybePop
//CanPop
//HIDE BACK BUTTON FROM APPBAR


