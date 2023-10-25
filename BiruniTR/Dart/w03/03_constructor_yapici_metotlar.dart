import 'araba.dart';

void main(List<String> args) {
  Araba araba1 = Araba(); //varsayılan obje oluşurucu

  Araba araba2 = Araba.markaIleObjeOlustur(
    marka: "Mercedes",
  ); //isimli obje oluşturucu

  Araba araba3 = Araba.markaModelIleObjeOlustur(
    "Mercedes",
    "AMG",
  ); //isimli obje oluşturucu

  Araba araba4 = Araba.markaModelYilIleObjeOlustur(
    model: "AMG",
    marka: "Mercedes",
    yil: 2012,
  ); //isimli obje oluşturucu
}
