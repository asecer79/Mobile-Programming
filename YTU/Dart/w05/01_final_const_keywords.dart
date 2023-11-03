void main(List<String> args) {
  var a1 = 1;
  a1 = 2;
  a1 = 3;

  int a2 = 1;
  a2 = 2;
  a2 = 3;

  //for instance members
  //no need initial assignment, can be assigned later, final makes variables can change only one time. a kind of readonly value
  final int a3;
  a3 = 1;
  //a3 = 2; //err

  //not for instance members
  //we must initially assign its value, once assigned we can never change or modify it. readonly.
  const int a4 = 1;
  //a4 = 2; //err

  Student s1 = Student(id: 1, fullName: "Aydın");
  s1.id = 1;
  s1.fullName = "Ahmet";
  s1.id = 2;
  s1 = Student(id: 5, fullName: "Memnune");

  final Student s2 = Student(id: 1, fullName: "Aydın");
  s2.id = 1; //changing members ok
  s2.fullName = "Mehmet"; //changing members: ok
  //s2 = Student(id: 3, fullName: "Mustafa"); //changing address: not possible

  Student b1 = Student(id: 1, fullName: "Aydın");
  Student b2 = Student(id: 1, fullName: "Aydın");
  print(b1 == b2); //only address comparision, they both have different address.

  final Student c1 = Student(id: 1, fullName: "Aydın");
  final Student c2 = Student(id: 1, fullName: "Aydın");
  print(c1 == c2);

//Immutable Object:
  final Student2 d1 = Student2(id: 1, fullName: "Aydın");
  //d1.fullName = "sad";// err cannot be changed members value
  //d1 = Student2(id: 11, fullName: "Ahmet");// err cannot be changed address of the object

  final Student2 d2 = Student2(id: 1, fullName: "Aydın");
  print(d1 == d2);
}

//immutable class// un changeable
class Student2 {
  final int id;
  final String fullName;

  Student2({required this.id, required this.fullName});
}

class Student {
  int id;
  String fullName;

  Student({required this.id, required this.fullName});
}
