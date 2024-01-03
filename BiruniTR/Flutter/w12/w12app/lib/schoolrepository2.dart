import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:w12app/student.dart';

class DbHelper {
  bool recreate;
  DbHelper({this.recreate = false});

  Future<Database> getDatabase() async {
    var dbPath = await getDatabasesPath();
    var fullPath = join(dbPath, "schooldb.db");

    if (recreate && await File(fullPath).exists()) {
      await deleteDatabase(fullPath);
    }

    if (recreate || !await File(fullPath).exists()) {
      ByteData data = await rootBundle.load("assests/database/schooldb.db");
      List<int> bytes = data.buffer.asUint8List();
      await File(fullPath).writeAsBytes(bytes);
    }

    return await openDatabase(fullPath);
  }
}

class SchoolRepository2 {
  var dbHelper = DbHelper(recreate: false);

  Future<List<Student>> getStudents() async {
    final db = await dbHelper.getDatabase();

    final List<Map<String, dynamic>> studentsMap = await db.query("students");

    final List<Student> students = List.generate(
        studentsMap.length, (index) => Student.fromMap(studentsMap[index]));

    return students;
  }

  Future<int> addStudent(Student student) async {
    final db = await dbHelper.getDatabase();

    return await db.insert("students", student.toMap());
  }

  Future<int> updateStudent(Student student) async {
    final db = await dbHelper.getDatabase();

    return await db.update("students", student.toMap(),
        where: "id = ?", whereArgs: [student.id]);
  }

  Future<int> deleteStudent(int id) async {
    final db = await dbHelper.getDatabase();

    return await db.delete("students", where: "id = ?", whereArgs: [id]);
  }
}
