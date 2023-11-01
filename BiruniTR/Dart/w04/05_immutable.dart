void main(List<String> args) {
  const Student s1 = Student(id: 1, fullName: "Aydın");

  Student s2 = Student(id: 1, fullName: "Aydın");

  const Student s3 = Student(id: 1, fullName: "Aydın");



  print(s1 == s2);

  print(s1 == s3);
}

//Immutable
class Student {
  const Student({required this.id, required this.fullName});
  //immutable
  final int id;
  final String fullName;

  void m() {
    //...
  }
}

//IMMUTABLE// değiştirilemez
//*
/*class Student {
  //immutable
  final int id;
  final String fullName;
  Student({required this.id, required this.fullName});

  void m() {
    //...
  }
}*/
