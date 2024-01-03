import 'package:flutter/material.dart';
import 'package:w12app/schoolrepository1.dart';
import 'package:w12app/schoolrepository2.dart';
import 'package:w12app/student.dart';

class StudentPage1 extends StatefulWidget {
  const StudentPage1({super.key});

  @override
  State<StudentPage1> createState() => _StudentPage1State();
}

class _StudentPage1State extends State<StudentPage1> {
  var repository = SchoolRepository2();
  List<Student> _students = [];

  _loadStudents() async {
    _students = await repository.getStudents();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    ///  repository.addStudent(Student(firstName: "firstName", lastName: "lastName", departmentId: 1));

    _loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students"),
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: GestureDetector(
                onDoubleTap: () async {
                  await Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AddOrUpdateStudentPage(_students[index]);
                    },
                  ));

                  _loadStudents();
                },
                child: Text(_students[index].firstName +
                    " " +
                    _students[index].lastName),
              ),
              subtitle: Text(_students[index].departmentId.toString()),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () async {
                  await repository.deleteStudent(index);
                  await _loadStudents();
                },
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AddOrUpdateStudentPage();
            },
          ));

          _loadStudents();
        },
      ),
    );
  }
}

class AddOrUpdateStudentPage extends StatelessWidget {
  AddOrUpdateStudentPage([Student? student = null]) {
    this.student = student;
  }

  Student? student;

  SchoolRepository1 repository = SchoolRepository1();

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var departmentIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (student != null) {
      firstNameController.text = student!.firstName ?? "";
      lastNameController.text = student!.lastName ?? "";
      departmentIdController.text = student!.departmentId.toString() ?? "0";
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
              controller: firstNameController,
              decoration: InputDecoration(labelText: "First Name")),
          TextField(
              controller: lastNameController,
              decoration: InputDecoration(labelText: "Last Name")),
          TextField(
              controller: departmentIdController,
              decoration: InputDecoration(labelText: "Dep Id")),
          ElevatedButton(
              onPressed: () async {
                if (student == null) {
                  await repository.addStudent(Student(
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      departmentId: int.parse(departmentIdController.text)));
                } else {
                  await repository.updateStudent(Student(
                      id: student!.id,
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      departmentId: int.parse(departmentIdController.text)));
                }
                Navigator.pop(context);
              },
              child: Text("Save"))
        ],
      ),
    );
  }
}
