import 'dart:io';

void main(List<String> args) {
  print("Enter your name: ");
  var name = stdin.readLineSync();

  print("Your name is $name");
}
