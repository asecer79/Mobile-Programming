class Araba {
//varsayılan/default yapıcı metot açık yazılmadığı sürece gözükmeyebilir.
  Araba() {
    print("İlk burası çalışır ve obje oluşturulup hafızaya atılır...");
  }

  //isimli yapıcı metotlar
  Araba.markaIleObjeOlustur({required String marka}) {
    this.marka = marka;
    print(
        "Araba.markaIleObjeOlustur(String marka) ile obje oluşturulup hafızaya atılır...");
  }

  Araba.markaModelIleObjeOlustur(String marka, String model) {
    this.marka = marka;
    this.model = model;
    print(
        " Araba.markaModelIleObjeOlustur(String marka,String model) ile obje oluşturulup hafızaya atılır...");
  }

  Araba.markaModelYilIleObjeOlustur(
      {required marka, required String model, required int yil}) {
    this.marka = marka;
    this.model = model;
    this.yil = yil;
    print(
        " Araba.markaModelIleObjeOlustur(String marka,String model) ile obje oluşturulup hafızaya atılır...");
  }

  factory Araba.FabrikaKurucusuIleOlustur(int aracKategori) {
    //....
    if (aracKategori == 0) {
      var a = Araba();
      a.tur = "Otomobil";

      return a;
    } else if (aracKategori == 1) {
      var a = Araba();
      a.tur = "SUV";

      return a;
    } else {
      var a = Araba();
      a.tur = "Ticari";

      return a;
    }
  }

  String? tur;
  String? marka;
  String? model;
  int? yil;

  //props

  //metotlar...

  //....
}
