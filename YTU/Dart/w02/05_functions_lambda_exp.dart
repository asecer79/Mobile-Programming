void main(List<String> args) {
  //giveMessage1();
  //giveMessage1();
  //giveMessage3("Hi!");

  //var message = getMessage4();
  var message = getMessage5("I am happy!");
  print(message);

  print(doubleAndSum(1, 2));

  print(math(doubleAndSum, 1, 2));
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

//lambda or fat arrow functions

//standard func.
int sum(int a, int b) {
  return a + b;
}

//lambda or fat arrow func.
int sum1(int a, int b) => a + b;



//int Function(int,int) doubleAndSum
//Function doubleAndSum
//var doubleAndSum
//dynamic doubleAndSum
var doubleAndSum = (int previousValue, int element) {
  int doubled = element * 2;
  return previousValue + doubled;
};

//int math(Function(int,int) f, int a, int b) 
//int math(Function f, int a, int b) 
//int math(dynamic f, int a, int b) 
int math(int Function(int,int) f, int a, int b) {
  return f(a, b);
}


//parameters and function definitions

