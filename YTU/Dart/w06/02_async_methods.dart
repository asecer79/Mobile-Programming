void main(List<String> args) async {
  print("Program started");
  process1();
  await longProcess();
  await veryLongProcess();
  urgentProcess();

  print("Program finished");
}

void process1() {
  print("p1 started");
  print("p1 completed");
}

Future longProcess() async {
  print("long process started");
  await Future.delayed(Duration.zero, () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("longProcess $i");
    }

    print("long process completed");
  });
}

Future veryLongProcess() async {
  print("very long process started");
  await Future.delayed(Duration.zero, () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 2)); //only for wait/artificial delay time
      print("veryLongProcess $i");
    }
    print("very long process completed");
  });
}

void urgentProcess() {
  print("urgentProcess process started");
  print("urgentProcess process completed");
}
