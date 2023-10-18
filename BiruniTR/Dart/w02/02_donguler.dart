void main(List<String> args) {
  //A-Iteratif döngüler
  //loops => döngüler

  for (var i = 1; i <= 15; i++) {
    print(i);
  }

  int sayac = 1;
  print("-------------------------------------");
  while (sayac <= 15) {
    print(sayac);
    sayac++;
  }

  sayac = 1;
  print("-------------------------------------");

  do {
    print(sayac);
    sayac++;
  } while (sayac <= 15);

  //infinite loops/sonsuz döngüler
  /*for (;;) {
    print("İşlem");
    //if (true) break;  //döngüden tamamen çıkar
    // continue // alt satrıları çalışıma zdöngü başına döner
  }
  */
  /*
  while (true) {
    //break; continue;
    //işlemler
  }
  */

  //recursive
  for (var i = 0; i <= 5; i++) {
    print(Fibonacci(i));
  }

  print(Toplam(10));

  //for in dongusu
  List<int> list1 = [1, 2, 3];
  for (var element in list1) {
    print(element);
  }
}

//recursive döngüler /Özyinelemeli
//Fib   0 1 1 2 3 5 8 13 21 .....
int Fibonacci(int index) {
  if (index == 0 || index < 0) return 0;
  if (index == 1 || index == 2) return 1;

  return Fibonacci(index - 1) + Fibonacci(index - 2);
}

//1 den n e kadar olan sayıların top:
int Toplam(int n) {
  if (n == 0) return 0;
  var top = n + Toplam(n - 1);
  return top;
}
