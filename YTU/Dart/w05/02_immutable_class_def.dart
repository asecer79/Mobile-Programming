void main(List<String> args) {
  //Immutable Object:
  final Student2 d1 = Student2(id: 1, fullName: "Aydın");
  //d1.fullName = "sad";// err cannot be changed members value
  //d1 = Student2(id: 11, fullName: "Ahmet");// err cannot be changed address of the object

  //Immutable Object:
  final Student2 d2 = Student2(id: 1, fullName: "Aydın");
  print(d1 == d2);

  //If const objects have exactly same member values then thy created on same address.
  const Student e1 = Student(id: 101, fullName: "Ayşe");
  const Student e2 = Student(id: 101, fullName: "Ayşe");

 // e1 = Student(id: 11, fullName: "ds"); //err
 // e1.fullName = "asd"; //err

  print(e1 == e2);
}

//Immutable
class Student {
  const Student({required this.id, required this.fullName});
  final int id;
  final String fullName;
}

//immutable class// un changeable
class Student2 {
  final int id;
  final String fullName;

  Student2({required this.id, required this.fullName});
}
