void main(List<String> args) {
  giveMessage1();
  giveMessage1();
  giveMessage3("Hi!");
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
