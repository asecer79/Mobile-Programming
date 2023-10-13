void main(List<String> args) {
  //giveMessage1();
  //giveMessage1();
  //giveMessage3("Hi!");

  //var message = getMessage4();
  var message = getMessage5("I am happy!");
  print(message);
}

//void methods/functions
giveMessage1() {
  print("I'm void without keyword!");
}

void giveMessage2() {
  print("I'm void with keyword!");
}

void giveMessage3(String message) {
  print(message);
}

//non-void / type returning methods
String getMessage4() {
  return "Hello!";
}

String getMessage5(String message) {
  return "Your message is: $message";
}
