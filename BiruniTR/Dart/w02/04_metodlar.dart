//entry point/giriş metodu

void main(List<String> args) {
  //print(Faktoriyel(5));

  //int Sum(int a, int b) => a + b;

  //print(Sum(2, 2));

  //print(MatematikIslemi(Sum, 5, 6));

  // print(MatematikIslemi(Divide, 12, 4));

  // print(IslemSec(2)(12, 3));

  print(product(5, 8));
}

//fonksiyon/metodlar/metotlar/routine/yordam/procedure

//1. void metodlar, parametresiz

Toplam1() {
  // void Toplam1()
  int a = 4;
  int b = 5;
  print(a + b);
}

//2. void metodlar, parametreli
void Toplam2(int a, int b) {
  print(a + b);
  //işlemler
}

//3. tip/type metodlar, parametresiz/ return olmalıdır.
int Toplam4() {
  int a = 4;
  int b = 5;

  return a + b;
}

//4. tip/type metodlar, parametreli/ return olmalıdır.
int Toplam5(int a, int b) {
  //işlemler
  return a + b;
}

//5. Recursive / Özyinelemeli metodlar
int Faktoriyel(int n) {
  if (n <= 0) {
    return 1;
  }

  return n * Faktoriyel(n - 1);
}

//6. Fat arrow/ lambda expression/ metodlar
int Sum(int a, int b) => a + b;
//int Sum(int a, int b){
//return a+b;
//}

double Divide(int a, int b) => a / b;

//7. Fonksiyon tipli, yada fonksiyon parametreli fonksiyonlar

int MatematikIslemi(Function(int, int) islem, int a, int b) {
  return islem(a, b);
}

Function IslemSec(int islemKod) {
  if (islemKod == 1) {
    return Sum;
  }
  if (islemKod == 2) {
    return Divide;
  }

  return Toplam5;
}

//8. Anonim/Anonymous metodlar

var product = (int a, int b) {
  //işlemler
  return a * b;
};
