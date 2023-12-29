import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  @override
  State<SharedPreferencesPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SharedPreferencesPage> {
  _saveCredentials() async {
    var localStorage = await SharedPreferences.getInstance();

    if (isRememberMeChecked) {
      await localStorage.setString("userName", _userNameController.text);
      await localStorage.setString("password", _passwordController.text);
    } else {
      await localStorage.remove("userName");
      await localStorage.remove("password");
    }

    await localStorage.setBool("isRememberMeChecked", isRememberMeChecked);
  }

  _loadCredentials() async {
    var localStorage = await SharedPreferences.getInstance();

    _userNameController.text = localStorage.getString("userName") ?? "";
    _passwordController.text = localStorage.getString("password") ?? "";
    isRememberMeChecked = localStorage.getBool("isRememberMeChecked") ?? false;

    setState(() {});
  }

  var _userNameController = TextEditingController();
  var _passwordController = TextEditingController();

  var isRememberMeChecked = false;

  @override
  void initState() {
    super.initState();

    _loadCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _userNameController,
                  decoration: InputDecoration(labelText: "User Name")),
              TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: "Password")),
              Text("Remember me!"),
              Checkbox(
                  value: isRememberMeChecked,
                  onChanged: (value) {
                    isRememberMeChecked = value!;
                    setState(() {});
                  }),
              ElevatedButton(
                  onPressed: () async {
                    if (_userNameController.text == "a" &&
                        _passwordController.text == "1") {
                      await _saveCredentials();

                      await Navigator.pushReplacement(context,
                          MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ));

                      setState(() {});
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
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
        title: Text("Main Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var localStorage = await SharedPreferences.getInstance();

                    await localStorage.remove("userName");
                    await localStorage.remove("password");
                    await localStorage.setBool("isRememberMeChecked", false);

                    await Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return SharedPreferencesPage();
                      },
                    ));
                  },
                  child: Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }
}
