void main(List<String> args) {
  //Collections: list/array of any kind.

  //Dynamic-NotFixedLength-Expandable Lists:
  List<int> list1 = [1, 2, 3]; //strongly typed/generic
  List list2 = <int>[1, 2, 3]; //strongly typed/generic
  List list3 = [1, 2, 3]; //dynamic
  List<int> list4 = List.empty(growable: true);

  list1.add(4);
  list1.removeAt(0);
  list1[1] = 2;

  //Fixed Lists:
  List<int> list5 = List.generate(8, (index) => index * index, growable: false);
  //list5.add(4);
  List<int> list6 = List.filled(50, 2, growable: false);
  print(list6);
  List<String> names = ["Ayşe", "Memduh", "Şaziye", "Şaban", "Memnune"];
  //some useful operations
  print(list5.length);
  print(list5.reversed);
  print(list5.first);
  print(list5.isEmpty);
  print(list5.singleWhere((element) => element == 9));
  print(list5.any((element) => element == 1));
  print(list5.join("#"));
  var res2 = list5.where((element) => element % 2 == 0); //In c# LINQ
  print(res2);

  var queryResult =
      names.where((element) => element.startsWith("Ş") && element.length > 4);
  print(queryResult);

  names.forEach((element) {
    print(element);
    //...
  });

  for (var element in names) {
    print(element);
  }

  List<dynamic> list8 = [1, true, DateTime(2024), "Aydın"];
  List<Object> list9 = [1, true, DateTime(2024), "Aydın"];
}
