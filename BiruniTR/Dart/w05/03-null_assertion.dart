void main(List<String> args) {
  int a = getNum()!; // "!" null assertion

  print(a);
  var t1 = Test1();
  int a1 = t1.a!;
  print(a1);

  int s1 = t1.list!.first!;

  print(s1.isOdd);
}

int? getNum() {
  return 5;
}

class Test1 {
  int? a;
  List<int?>? list = [10, 2, 6, null];
}
