//ALL CRUD Operations and Connection and Creation of db will be handled here.

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:w13app/student.dart';

class DbHelper {
  bool reCreate;
  DbHelper({required this.reCreate});

  Future<Database> getDatabaseInstance() async {
    var dbPath = await getDatabasesPath();
    var fullPath = join(dbPath, "schooldatabase.db");

    if (reCreate && await File(fullPath).exists()) {
      await deleteDatabase(fullPath);
    }

    if (!await File(fullPath).exists()) {
      ByteData data =
          await rootBundle.load("assets/database/schooldatabase.db");

      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(fullPath).writeAsBytes(bytes);
    }

    return await openDatabase(fullPath);
  }
}

//CRUD MANAGER
class SchoolDatabaseRepository {
  final _dbHelper = DbHelper(reCreate: false);

  Future<int> addStudent(Student student) async {
    var db = await _dbHelper.getDatabaseInstance();
    return await db.insert("students",
        student.toMap()); //Insert into students(firsrname...) values(...)
  }

  Future<List<Student>> getStudents() async {
    var db = await _dbHelper.getDatabaseInstance();

    var students = await db.query("students"); //select * from students
    return List.generate(students.length, (index) {
      return Student.fromMap(students[index]);
    });
  }

  Future<int> updateStudent(Student student) async {
    var db = await _dbHelper.getDatabaseInstance();
    return await db.update("students", student.toMap(),
        where: "id=?",
        whereArgs: [
          student.id
        ]); // update students set fname = ..., ,,  where id =1
  }

  Future<int> deleteStudent(int id) async {
    var db = await _dbHelper.getDatabaseInstance();
    return await db.delete("students",
        where: "id=?", whereArgs: [id]); // delete from students  where id =1 ..
  }
}
