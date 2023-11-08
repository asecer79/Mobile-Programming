void main(List<String> args) {
  List<int> list;

  //object promotion
  if (DateTime.now().hour == 5) {
    list = [1, 2, 3];
  } else {
    //list = getList()!;
    list = [1, 0];
  }

  print(list.length);
}

List<int>? getList() {
  return null;
}
