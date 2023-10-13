void main(List<String> args) {
  int grade = 75;

  if (grade < 50) {
    print("Bad");
  } else if (grade >= 50 && grade < 75) {
    print("Not Bad");
  } else if (grade >= 75 && grade <= 100) {
    print("Good");
  } else {
    print("Wrong grade");
  }

  int dayOfWeek = 1;

  switch (dayOfWeek) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;

    default:
      print("Wrong day number");
      break;
  }

  
  String note = "";
  //ternary op, conditional if
  note = (grade >= 0 && grade <= 100) ? "The grade value is consistent!" : "The grade value is inconsistent!";


/*
  if (grade >= 0 && grade <= 100) {
    note = "The grade value is consistent!";
  } else {
    note = "The grade value is inconsistent!";
  }
*/

  print(note);
}
