void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  print(numbers);

  var filtered =
      myFilterMethod(numbers, (element) => element % 2 == 0); //even numbers
  print(filtered);

  filtered =
      myFilterMethod(numbers, (element) => element > 2 == 0); //even numbers
  print(filtered);

  List<String> names = [
    "Ayşe",
    "Memnune",
    "Şaziye",
    "Gülnur",
    "Zekeria",
    "Şükrü",
    "Alican"
  ];

  print(myFilterMethod(names, (name) => name.startsWith("A")));
}

List<T> myFilterMethod<T>(
    List<T> unfilteredList, bool Function(T) filterFunction) {
  List<T> filteredList = [];

  for (var element in unfilteredList) {
    if (filterFunction(element)) {
      filteredList.add(element);
    }
  }

  return filteredList;
}

