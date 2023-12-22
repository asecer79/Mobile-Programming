import 'package:flutter/material.dart';
//Card example

class CardPageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Card Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              createCard(),
              createCard(),
              createCard(),
              createCard(),
              createCard(),
            ],
          ),
        ),
      ),
    );
  }

  Card createCard() {
    return Card(
      elevation: 4.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/student.jpg"),
            ),
            title: Text("Student"),
            subtitle: Text("Dep. of Math. Eng."),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            child: Text(
                "Student details: Student details:Student details: Student details: Student details:Student details:Student details:"),
          ),
          ButtonBar(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Edit")),
              ElevatedButton(onPressed: () {}, child: Text("Remove")),
            ],
          )
        ],
      ),
    );
  }
}
