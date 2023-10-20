void main(List<String> args) {
  //Map/ key and value pairs, each element or entry comprise of key and value pair
  Map<String, int> ages = {
    "Aydın": 45,
    "Şaziye": 96,
    "Ali": 56,
    "Aydın": 69,
  };

  print(ages);

  //unique like sets but according to key.
  //un ordered

  ages["Şaziye"] = 56;

  Map<dynamic, dynamic> row1 = {
    "Id": 123,
    "FName": "Ali",
    "LastName": "Koçak",
    "BirthDate": DateTime(2000, 10, 10),
    "Salary": 1500.89
  };

  Map<dynamic, dynamic> row2 = {
    "Id": 111,
    "FName": "Mualla",
    "LastName": "Şaziyeoğlu",
    "BirthDate": DateTime(1979, 10, 10),
    "Salary": 9520.89
  };

  List<Map<dynamic, dynamic>> studentTable = [row1, row2];

  // root{
  //        "studentTable":[
  //                           { "Id": 111,"FName": "Mualla", .. },
  //                           { "Id": 123,"FName": "xxxx",.... },
  //                       ]
  // }

  for (var record in studentTable) {
    print(record.entries.join(", "));
    //for (var entry in record.entries) {
    // print("${entry.key}: ${entry.value}");
    // }
  }

  var query = studentTable.where(
    (element) =>
        element.entries
            .singleWhere((element) => element.key == "Id")
            .value ==
        111,
  );

  print(query);
}
