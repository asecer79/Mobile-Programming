void main(List<String> args) async {
  //var result = await veryLongProcess();
  //print(result);

  veryLongProcess().then((result) {
    print(result);
  });

  print("Urgent process..");
}

Future<String> veryLongProcess() async {
  print("very long process started");
  await Future.delayed(Duration.zero, () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(
          Duration(seconds: 2)); //only for wait/artificial delay time
      print("veryLongProcess $i");
    }
  });

  return "very long process completed";
}
