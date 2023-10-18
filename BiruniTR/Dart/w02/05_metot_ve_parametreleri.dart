void main(List<String> args) {
  //print(Sum1(1, 2));

  //print(Sum2());
  //print(Sum2(1));
  //print(Sum2(1, 3));

  //print(Sum3(1));
  //print(Sum3(1, 2));
  //print(Sum3(1, 2, 3));

  //print(Sum4());
  //print(Sum4(a: 1));
  //print(Sum4(b: 2));
  //print(Sum4(a: 1, b: 2));
  //print(Sum4(b: 2, a: 1));

  //print(Sum5(1));
  //print(Sum5(1, a: 2));
  //print(Sum5(1, a: 2, b: 2));
  //print(Sum5(1, b: 3, a: 2));

  //print(Sum6(1, a: 2, b: 3));
  //print(Sum6(1, b: 3, a: 2));

  print(Sum7(1, a: 2));
  print(Sum7(1, a: 2, b: 2));
  print(
    Sum7(
      1,
      b: 3,
      a: 2,
    ),
  );
}

//01-zorunlu parametreli metotlar
int Sum1(int a, int b) {
  return a + b;
}

//02-opsiyonel parametreli metotlar
int Sum2([int a = 0, int b = 0]) {
  return a + b;
}

//03-Hibrit parametreli metotlar
int Sum3(int c, [int a = 0, int b = 0]) {
  return a + b + c;
}

//04-isimli parametreli + opsiyonel metotlar
int Sum4({int a = 0, int b = 0}) {
  return a + b;
}

//05-hibrit isimli parametreli + opsiyonel metotlar
int Sum5(int c, {int a = 0, int b = 0}) {
  return a + b;
}

//06-hibrit + isimli parametreli + zorunlu,  metotlar
int Sum6(int c, {required int a, required int b}) {
  return a + b;
}

//07-hibrit + isimli parametreli + zorunlu/opsiyonel,  metotlar
int Sum7(int c, {required int a, int b = 0}) {
  return a + b;
}
