class Student {
  int? id;
  String firstName;
  String lastName;
  int departmentId;

  Student({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.departmentId,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "departmentId": departmentId,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
        id: map["id"],
        firstName: map["firstName"],
        lastName: map["lastName"],
        departmentId: map["departmentId"]);
  }
}
