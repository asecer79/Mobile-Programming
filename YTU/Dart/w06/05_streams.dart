void main(List<String> args) {
  downloadBytes(1000).listen((event) {
    print(event);
  });
}

Stream<int> downloadBytes(int max) async* {
  for (var i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));

    yield i; //return but not only one time
  }
}
