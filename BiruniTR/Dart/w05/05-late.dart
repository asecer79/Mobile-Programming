void main(List<String> args) {
  Student o1 = Student(2);
  o1.adi = "";

  print(o1.id);
}

class Student {
  /*
   int? id;  //risksiz
   String? adi;  //risksiz
   */

  late int id; //riskli
  late String adi; //riskli

  final int department;
  Student(this.department) {
    //risksiz
  }
}
