import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});
  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _email = "";
  String _password = "";

  String _formStatus = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_formStatus),
                TextFormField(
                  decoration: InputDecoration(labelText: "Adı"),
                  validator: (value) {
                    if (value == null || value.trim() == "") {
                      return "Adı boş olamaz!";
                    }
                  },
                  onSaved: (newValue) {
                    _name = newValue!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.trim() == "") {
                      return "Email boş olamaz!";
                    }
                  },
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Şifre"),
                  validator: (value) {
                    if (value == null || value.trim() == "") {
                      return "Şifre boş olamaz!";
                    }
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        // DB ye kaydetme kodu burada yazılır...
                        // _name = "";
                        // _email = "";
                        // _password = "";
                        //
                        //

                        setState(() {
                          _formStatus = "Kayıt başarılı";
                        });
                      } else {
                        setState(() {
                          _formStatus = "Hata";
                        });
                      }
                    },
                    child: Text("Kaydet"))
              ],
            ),
          )),
    );
  }
}
