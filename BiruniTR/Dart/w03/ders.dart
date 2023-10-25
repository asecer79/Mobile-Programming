import 'Ogrenci.dart';

class Ders {
  static int? uniKod =
      1; //tüm dersler için ıuni kod aynı olduğundan bu field statik olabilir.

  int? _kod;
  String? _adi;

  //statik üyeler//dikkatli olunmalı herşey statik tanımlanamaz....
  static int? _kapasite;
  static int? _ogrenciSayisi;

  List<Ogrenci> ogrenciler = [];

  set setKod(int? kod) {
    this._kod = kod;
  }

  get getKod {
    return this._kod;
  }

  set setAdi(String? adi) {
    this._adi = adi;
  }

  get getAdi {
    return this._adi;
  }

  //statik propertiler
  static set setKapasite(int? kapasite) {
    _kapasite = kapasite;
  }

  static get getKapasite {
    return _kapasite;
  }

  static get getOgrenciSayisi {
    return _ogrenciSayisi;
  }

  static set setOgrenciSayisi(int? ogrenciSayisi) {
    _ogrenciSayisi = _ogrenciSayisi;
  }

  //static metotlar
  //static constructor

  static int? hangiUniversite() {
    return uniKod;
  }
}
