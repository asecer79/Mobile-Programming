class Student {
  int id;
  String fullName;
  String department;
  // String imagePath;

  Student(this.id, this.fullName, this.department);
}

class StudentList {
  static List<Student> students = [
    Student(1123, "Şaziye", "Math Eng."),
    Student(2123, "Şaban", "Com Eng."),
    Student(3123, "Asiye", "Bio Eng."),
    Student(4123, "John", "Bio Eng."),
    Student(5123, "Jill", "Stat Eng."),
    Student(6123, "Şükrü", "Math Eng."),
  ];
}
