//Grid Example

import 'package:flutter/material.dart';
import 'package:w10_app1/Student.dart';

class GridViewExampleForStudent extends StatelessWidget {
  const GridViewExampleForStudent({super.key});

  @override
  Widget build(BuildContext context) {
    var data = getStudentList(100);

    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: Text("Card")),
        body: Container(
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 5 / 2.4),
          // scrollDirection: Axis.horizontal,
          itemCount: data.length,
          padding: EdgeInsets.all(2),
          itemBuilder: (context, index) {
            return getCard(data[index]);
          },
        )));
  }

  Card getCard(Student student) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/image1.jpg')),
          title: Text(student.fullName),
          subtitle: Text(student.phone),
          trailing: Icon(Icons.summarize),
        ),
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          child: Text("asdlsakdjlsakdjlsad sadlhaskd sad sad"),
        ),
        ButtonBar(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Detay Gör")),
            ElevatedButton(onPressed: () {}, child: Text("İletişim Kur"))
          ],
        )
      ]),
    );
  }

  List<Student> getStudentList(int count) {
    var list = <Student>[];
    for (var i = 0; i < count; i++) {
      list.add(Student(fullName: "$i. Student", phone: "$i. phone"));
    }

    return list;
  }
}
