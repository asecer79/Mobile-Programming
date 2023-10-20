import 'student.dart';

void main(List<String> args) {
  //Student ahmet = new Student();
  Student ahmet = Student(); // ahmet is an object, not a class
  //ahmet is a variable, store inside Student class instance as object

  Student fahriye = Student();
  //creating an object from Student Class
  //getting an instance from Student Class

  fahriye.setFirstName = "Fahriye";
  fahriye.setId = 1;
  fahriye.setAge = 36;

  fahriye.Talk();
  print(fahriye.whatIsYourAge());
}
