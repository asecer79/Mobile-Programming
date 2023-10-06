import 'dart:convert';

void main(List<String> args) {
  
  //1-Number types
  //    int
  //    double
  //2-String types
  //3-bool types
  //4-other object types

  //everything is object

  //number types
  int age = 21;
  double salary = 15.5;

  //string
  String name = "Aydın's";
  String sname = 'Seçer';

//boolean
  bool yes = 1 == 1 & 2;

  Object v1 = age;

  Object v2 = "As";

  Object v3 = true;

  print(age);

  //literals
  //dtype(int) identifier(a1) operator(=) numeric literal (1234)
  int a1 = 1234;

  //dtype(String) identifier(n1) operator(=) string literal (School)
  String n1 = "School";

  //string operations /interpolations
  int age1 = 21;
  String name1 = "Şaziye";
  double salary1 = 1500;
  DateTime bdate = DateTime(1979, 2, 19);

  print(age1.toString() + " " + name1);

  String formattedData = "${age1} ${name} -Result ${salary1}, ${bdate}";

  print(formattedData);

  String num2 = "1325";

  print(int.parse(num2) + 2);
}
