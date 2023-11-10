void main(List<String> args) {
  print("Program started");

  //p1
  print("p1 completed");
  //...

//p2
//asynchronous execution
  Future.delayed(Duration(seconds: 0), () {
    for (var i = 0; i < 10000000000; i++) {
      if (i * i == 232154151) {
        print(i);
      } else {}
    }
    print("p2 long process completed");
    //...
  });

//p3
//asynchronous execution
  Future.delayed(Duration.zero, () {
    for (var i = 0; i < 100000000000; i++) {
      if (i * i == 232154151) {
        print(i);
      } else {}
    }
    print("p3 very long process completed");
    //...
  });


  //very important in emergency process.
  print("p4 -very important in emergency process.");
  //...

  print("Program Completed");
  //....
}
