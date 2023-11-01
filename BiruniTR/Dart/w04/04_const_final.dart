void main(List<String> args) {
  var a1 = 1;
  int a2 = 1;
  final int a3;
  a3 = 1; //1 kez değer değişibilir.
  //a3 = 4; //err
  const int a4 = 1; //direkt değer almak zorunda ve hiç değişmezler
  //a4 = 4; //err

  final Student s1 = Student(id: 1, fullName: "Ahmet");
  s1.id = 5;
  //burada final adresi fixler, yani aynı adrese başka obje atayamayız.
  // s1 = Student(id: 2, fullName: "Ayşe");

  Student s3 = Student(id: 1, fullName: "Aydın");
  Student s4 = Student(id: 1, fullName: "Aydın");
  print(s3 == s4);//adresler farklı olduğu için false olur.

  
}

class Student {
  int id;
  String fullName;
  Student({required this.id, required this.fullName});

  void m() {
    //...
  }
}
