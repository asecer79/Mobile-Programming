import '../w04/student.dart';

void main(List<String> args) {
  //Student student1 = Student();

  //student1.schoolName = "YTÜ"; //error: cannot be reached from instance or object.
  /* Student.schoolName = "YTÜ";

  Student student2 = Student();
  Student student3 = Student();

  print(Student.schoolName);
  Student.m1();
*/
  //userDefinedDatatype objectref/object/instance = userDefinedDatatype, () = default constructor
  Student student1 = Student();
  Student student2 = Student.withName("Ahmet"); //named constructor call.
  Student student3 = Student.withNameAndLastName("Ahmet", "Kalay"); //named constructor call.
  Student student4 = Student.withNameAndLastNameAndAge("Ahmet", "Kalay", 26); //named constructor call.
}
