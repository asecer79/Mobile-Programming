void main(List<String> args) async {
  var job = Future(() {
    int n = 4;
    int sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }

    return sum;
  });

  print(await job);
  print("P2");
}
