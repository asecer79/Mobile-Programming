//class != object
//a class is definition of any real world entity (abstract things, concrete things)
class Student {
  //consists of its members

  //members can be defined as 2 main section
  //01. Instance members
  //All of the members given below are Instance members
  //01-fields members, variables, data types
  int? _id;
  String? _firstName;
  int? _age;

  //02-property members
  int? get getId {
    return _id;
  }

  set setAge(int? id) {
    this._age = id;
  }

  int? get getAge {
    return _age;
  }

  set setId(int? id) {
    this._id = id;
  }

  String? get getFirstName {
    return this._firstName;
  }

  set setFirstName(String? firstName) {
    this._firstName = firstName;
  }

  //03-Methods
  void Talk() {
    print("My name is $_firstName and I am speaking now...");
  }

  int? whatIsYourAge() {
    return this._age;
  }

  //04-Constructor method members
  //.....

  //05-Static members .....
  //.....

  //access modifiers
  //public
  int? x;
  String? y;

  //private
  int? _x2;
  String? _y2;

  //02. Static members // will be discussed next time
  static String? schoolName;
}
