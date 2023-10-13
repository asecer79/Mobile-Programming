void main(List<String> args) {
  //standard loops
  for (var i = 2; i <= 50; i += 5) {
    //break;
    print(i);
  }

  var c = 2;
  while (c <= 50) {
    //continue;
    print(c);
    c += 5;
  }

  c = 2;
  do {
    print(c);
    c += 5;
  } while (c <= 50);

  //collection loops
  List<int> arr = [1, 2, 3, 4];
  for (var element in arr) {
    print(element);
  }

  //infinite loops
  //for (;;) {
  //print("hello");
  //}
  // while (true) {
  //print("hello");
  // }

  outloop:for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      if (i % j == 1) break outloop;
      print(i + j);
    }
  }
}
