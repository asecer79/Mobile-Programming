void main(List<String> args) {
  var sek1 = Dikdortgen();
  sek1.alanHesapla([2, 3]);

  var sek2 = Daire();
  sek2.alanHesapla([4]);
}

//soyut sınıflar objesi oluşturulamaz
//sadece miras alınabilirler.

abstract class Sekil {
  final double PI = 3.145;
  String? sekilAdi;

  //concrete method/gövdeli method
  void sekliniSoyle() {
    //....
    print(sekilAdi);
  }

//abstract method/soyut method
  double alanHesapla(List<double> parametreler);
  double cevreHesapla(List<double> parametreler);
}

class Dikdortgen extends Sekil {
  Dikdortgen() {
    sekilAdi = "Dikdortgen";
  }
  @override
  double alanHesapla(List<double> kenarlar) {
    return kenarlar[0] * kenarlar[1];
  }

  @override
  double cevreHesapla(List<double> kenarlar) {
    return 2 * (kenarlar[0] + kenarlar[1]);
  }
}

class Daire extends Sekil {
  Dikdortgen() {
    sekilAdi = "Daire";
  }

  @override
  double alanHesapla(List<double> parametreler) {
    return PI * parametreler[0] * parametreler[0];
  }

  @override
  double cevreHesapla(List<double> parametreler) {
    return 2 * PI * parametreler[0];
  }
}
