void main(List<String> args) {
  //print(sum1(1, 2));

  //print(sum2());
  //print(sum2(1));
  //print(sum2(1, 2));

  //print(sum3(1));
  //print(sum3(1, 2));
  //print(sum3(1, 2, 3));

  // print(sum4());
  // print(sum4(a: 1));
  // print(sum4(b: 2));
  // print(sum4(a: 1, b: 2));
  // print(sum4(b: 1, a: 2));

  print(sum5(1));
  print(sum5(1, a: 1));
  print(sum5(1, b: 2));
  print(sum5(1, a: 1, b: 2));
  print(sum5(1, b: 1, a: 2));

  print(sum6(a: 1, b: 2));
  print(sum6(b: 1, a: 2));
}

//mandatory parameters/must be provided when function call
//required params
int sum1(int a, int b) {
  return a + b;
}

//optional params
int sum2([int a = 0, int b = 0]) {
  return a + b;
}

int sum3(int c, [int a = 0, int b = 0]) {
  return a + b + c;
}

//named+optional params
int sum4({int a = 0, int b = 0}) {
  return a + b;
}

int sum5(int c, {int a = 0, int b = 0}) {
  return a + b + c;
}

//required named params
//int sum6(int c, int d, {required int a, required int b}) {
int sum6({required int a, required int b}) {
  return a + b;
}
