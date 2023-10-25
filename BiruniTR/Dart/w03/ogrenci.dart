//class declaration/definition = sınıf tanımlama
//sınıf != obje
class Ogrenci {
//Üyeler/sınıfın içindeki herşey
//01. Statik üyeler //Sonradan anlatılacak

//02.Instance members/kopya=örnek üyeleri
//    01.Field, veri alanları
  //public access modifiers / erişim denetleyicileri //encapsulation
  //int? no;
  //String? ad;
  //String? soyad;
  //bool? cinsiyet;

  //private access modifiers / erişim denetleyicileri //encapsulation
  int? _no;
  String? _ad;
  String? _soyad;
  bool? _cinsiyet;

//    02.Properties, Özellikler //metot ile değişken arası yapılardır/ getter ve setter.
  set setNo(int no) {
    //....
    this._no = no;
  }

  int? get getNo {
    //...
    return this._no;
  }

//    03.Metotlar/Fonksiyonlar.
  String adinNe() {
    return "Merhaba benim adım $_ad";
  }

  void sarkiSoyle() {
    print("Şuan senin için şarkı söylüyorum...");
  }

  double sinavdanKacAldin(String dersKodu) {
    if (dersKodu == "MP1") {
      return 98.98;
    } else {
      return 85.00;
    }
  }

//    04.Yapıcı/kurucu metot/ Constructor/method.
// diğer derste görecez

//    05.Fabrika kurucular/ Factory Constructor/method.
}
