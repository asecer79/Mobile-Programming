import 'package:flutter/material.dart';
import 'package:w13app/school_database_repository.dart';
import 'package:w13app/student.dart';

class StudentManagementPage extends StatefulWidget {
  const StudentManagementPage({super.key});

  @override
  State<StudentManagementPage> createState() => _StudentManagementPageState();
}

class _StudentManagementPageState extends State<StudentManagementPage> {
  var repository = SchoolDatabaseRepository();
  List<Student> students = [];

  _loadStudents() async {
    students = await repository.getStudents();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Students")),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: GestureDetector(
              onDoubleTap: () async {
                await Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AddStudentPage(students[index]);
                  },
                ));

                _loadStudents();
              },
              child: Text(
                  students[index].firstName + " " + students[index].lastName),
            ),
            subtitle:
                Text("Department: " + students[index].departmentId.toString()),
            trailing: IconButton(
                onPressed: () async {
                  await repository.deleteStudent(students[index].id!);
                  _loadStudents();
                },
                icon: Icon(Icons.delete)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AddStudentPage();
            },
          ));

          _loadStudents();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddStudentPage extends StatelessWidget {
  AddStudentPage([Student? student = null]) {
    studentToBeUpdated = student;

    if (studentToBeUpdated != null) {
      _firstName.text = student!.firstName;
      _lastName.text = student!.lastName;
      _departmentId.text = student!.departmentId.toString();
    }
  }

  var studentToBeUpdated;

  var repository = SchoolDatabaseRepository();

  var _firstName = TextEditingController();
  var _lastName = TextEditingController();
  var _departmentId = TextEditingController();

  _addOrUpdateStudent() async {
    if (studentToBeUpdated == null) {
      await repository.addStudent(Student(
          firstName: _firstName.text,
          lastName: _lastName.text,
          departmentId: int.parse(_departmentId.text)));
    } else {
      await repository.updateStudent(Student(
          id: studentToBeUpdated.id,
          firstName: _firstName.text,
          lastName: _lastName.text,
          departmentId: int.parse(_departmentId.text)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _firstName,
                  decoration: InputDecoration(labelText: "First Name")),
              TextField(
                  controller: _lastName,
                  decoration: InputDecoration(labelText: "Last Name")),
              TextField(
                  controller: _departmentId,
                  decoration: InputDecoration(labelText: "Department Id")),
              ElevatedButton(
                  onPressed: () async {
                    await _addOrUpdateStudent();

                    Navigator.pop(context);
                  },
                  child: Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
