//class != object
//a class is definition of any real world entity (abstract things, concrete things)
class Student {
  //consists of its members

  //members can be defined as 2 main section

  //*************************** INSTANCE ******************************** */
  //01. Instance members
  //All of the members given below are Instance members
  //01-fields members, variables, data types
  int? _id;
  String? _firstName;
  String? _lastName;
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

  //04-Constructor, Factory Constructor method members

  //default constructor
  /*Student() {
    //if we need some initial ops.
    _age = 20;
  }*/

  //named constructor 1
  Student.withName(String name) {
    //if we need some initial ops.
    _firstName = name;
  }

  //named constructor 2
  Student.withNameAndLastName(String name, String lastName) {
    //if we need some initial ops.
    _lastName = lastName;
  }

  //named constructor 3
  Student.withNameAndLastNameAndAge(String name, String lastName, int age) {
    //if we need some initial ops.
    _age = age;
  }

  //default factory constructor
  factory Student(num option, bool c) {
    if (option >= 5) {
      return Student.withNameAndLastName("Ahmet", "Mustafa");
    } else {
      return Student.withNameAndLastNameAndAge("Ali", "Kalay", 36);
    }
  }

  //named factory constructor
  factory Student.factorWithSettings(num option, bool c) {
    if (option >= 5) {
      return Student.withNameAndLastName("Ahmet", "Mustafa");
    } else {
      return Student.withNameAndLastNameAndAge("Ali", "Kalay", 36);
    }
  }

  //access modifiers
  //public
  int? x; //instance
  String? y;

  //private
  int? _x2;
  String? _y2;

  //*************************** STATIC ******************************** */
  //02. Static members // will be discussed next time
  static String? schoolName;
  static String? city;
  static void m1() {
    //...
  }
}
