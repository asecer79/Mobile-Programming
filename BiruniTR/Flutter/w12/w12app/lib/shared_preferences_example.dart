//Shared preferences example

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _userFieldController = TextEditingController();
  var _passwordFieldController = TextEditingController();

  bool isRememberMe = false;

  _loadCredentials() async {
    var db = await SharedPreferences.getInstance();
    setState(() {
      _userFieldController.text = db.getString("username") ?? "";
      _passwordFieldController.text = db.getString("password") ?? "";

      isRememberMe = db.getBool("isRememberMe") ?? false;
    });
  }

  _saveCredentials() async {
    var db = await SharedPreferences.getInstance();
    if (isRememberMe) {
      await db.setString("username", _userFieldController.text);
      await db.setString("password", _passwordFieldController.text);
    } else {
      await db.remove("username");
      await db.remove("password");
    }

    await db.setBool("isRememberMe", isRememberMe);
  }

  @override
  void initState()  {
    super.initState();

     _loadCredentials();

   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Pref."),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          TextField(
            controller: _userFieldController,
            decoration: InputDecoration(labelText: "User Name"),
          ),
          TextField(
            controller: _passwordFieldController,
            obscureText: true,
            decoration: InputDecoration(labelText: "Password"),
          ),
          Row(
            children: [
              Checkbox(
                value: isRememberMe,
                onChanged: (value) {
                  isRememberMe = value!;
                  setState(() {});
                },
              ),
              Text("Remember me")
            ],
          ),
          ElevatedButton(
              onPressed: () async {
                if (_userFieldController.text == "asecer" &&
                    _passwordFieldController.text == "123") {
                  var db = await SharedPreferences.getInstance();

                  if (isRememberMe) {
                    db.setBool("isAuth", true);
                  }

                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ));
                } else {}
                await _saveCredentials();
              },
              child: Text("Login"))
        ]),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              var db = await SharedPreferences.getInstance();
              db.setBool("isAuth", false);

              Navigator.pop(context);
            },
            child: Text("Exit"),
          ),
        ));
  }
}
