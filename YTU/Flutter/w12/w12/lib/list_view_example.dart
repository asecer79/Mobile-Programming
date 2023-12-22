import 'package:flutter/material.dart';
//Listview  example

class ListViewPageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("List view Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return createCard(index, "$index -Student");
          },
        ),
      ),
    );
  }

  Card createCard(int id, String name) {
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
            title: Text(name),
            subtitle: Text("Dep. of Math. Eng."),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            child: Text(
                "Student details $name: Student details:Student details: Student details: Student details:Student details:Student details:"),
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
