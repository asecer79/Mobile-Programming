void main(List<String> args) {
  int? a; // /? nullable operator *********************************
  if (a != null) print(a + 2);
  int? yas = null; //...web service../...

  // / ! null assertion operator ***********************************
  //int b = 2 + getNumber()!;

  //Test t = Test();
  //print(t.a! + 2);

  //List<int?> myList = t.list!;
  //int r = t.list!.first!;

  //  late  *********************************************************
  Student student = Student();
  //student.id = 1;
  print(student.id + 1);
  print(student.name);
  
}

class Test {
  int? a;

  List<int?>? list = [2, 1, null, 25];
}

int? getNumber() {
  return null;
}

class Student {
  // the best option without errors
  /* int id;
  String name;
  Student(this.id, this.name);*/

  //good approach but may be problematic.
  //int? id;
  //String? name;

  //not good approach but may be problematic.
  late int id;
  late String name;
}
