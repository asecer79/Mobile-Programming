void main(List<String> args) {
  int a = 1;
  int b = 0;

  if (b == 0) {
    throw BenimHatam("Sıfıra bölme hatası");
  } else {}

  try {
    //...
    print(a / b);

    //...
  } on IntegerDivisionByZeroException {
    //....
  } on FormatException {
    //.....
  } on BenimHatam{
    //...
  }
  
   catch (e) {
    //.....
    print(e);
  }
}

class BenimHatam implements Exception {
  String mesaj;
  BenimHatam(this.mesaj);

  @override
  String toString() {
    return "Exception: 405, $mesaj" ;
  }
}
