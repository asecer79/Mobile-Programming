import 'dart:io';

void main(List<String> args) {
  print("1. Sayı:");
  var i1 = stdin.readLineSync();
  var s1 = int.parse(i1!);

  print("2. Sayı:");
  var i2 = stdin.readLineSync();
  var s2 = int.parse(i2!);

  print("Toplam: ${s1 + s2}");
}
