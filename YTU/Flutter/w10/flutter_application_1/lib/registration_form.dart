import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  State<RegistrationForm> createState() => _SimpleCalculator();
}

class _SimpleCalculator extends State<RegistrationForm> {
  
  var _formKey = GlobalKey<FormState>();

  String _fullName = "";
  String _email = "";
  String _password = "";
  String _status = "";
  Color _statusColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Register")),
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _status,
                    style: TextStyle(color: _statusColor),
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "Full name cannot be empty";
                        }

                        return null;
                      },
                      onSaved: (newValue) => _fullName = newValue!,
                      decoration: InputDecoration(labelText: "Full Name")),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "Email cannot be empty";
                        }

                        return null;
                      },
                      onSaved: (newValue) => _email = newValue!,
                      decoration: InputDecoration(labelText: "E-Mail")),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "Password cannot be empty";
                        }

                        return null;
                      },
                      onSaved: (newValue) => _password = newValue!,
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            _formKey.currentState!.reset();
                        
                            setState(() {});
                          },
                          child: Text("Add new")),
                      ElevatedButton(
                          onPressed: () {
                            //save to db, sent via web service ....
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              _status = "Success";
                              _statusColor = Colors.green;

                              print(_fullName);
                              print(_email);
                              print(_password);
                            } else {
                              _status = "Error";
                              _statusColor = Colors.red;
                            }

                            setState(() {});
                          },
                          child: Text("Register"))
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
