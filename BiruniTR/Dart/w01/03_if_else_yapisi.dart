void main(List<String> args) {
  int a = 100;
  int b = 100;

  if (a > b) {
    print("$a > $b");
  } else if (a < b) {
    print("$a < $b");
  } else {
    print("$a = $b");
  }

  int gun = 1;

  switch (gun) {
    case 1:
      print("Pazartesi");
      break;
    case 1:
      print("Salı");
      break;
    case 1:
      print("Çarşamba");
      break;
    case 1:
      print("Perşembe");
      break;
    case 1:
      print("Cuma");
      break;
    case 1:
      print("Cumartesi");
      break;
    default:
      print("Pazar");
  }
}
