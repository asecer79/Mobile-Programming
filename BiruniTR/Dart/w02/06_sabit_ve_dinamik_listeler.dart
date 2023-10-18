void main(List<String> args) {
  //01-sabit uzunluklu listeler
  List<int> list1 = List.filled(5, 0, growable: false);
  //list1.add(5); //err

  //01-dinamik uzunluklu listeler
  List<int> list2 = List.filled(5, 0, growable: true);
  list2.add(5);

  List<String> isimler = [];
  //List  isimler = <String> [];
  //List<String>  isimler = <String> [];
  isimler.add("Aydın");
  isimler.add("Mehmet");

  var sonuc = isimler.where((element) => element.startsWith("A"));

  for (var element in sonuc) {
    print(element);
  }
  print("---------------------");
  for (var i = 0; i < isimler.length; i++) {
    print(isimler[i]);
  }
  print("---------------------");
  for (var element in isimler) {
    print(element);
  }

  isimler.add("Mustafa");

  isimler[1] = "Ahmet";

  print(isimler.length);
  print(isimler.isEmpty);
  var birlestir = isimler.join("@");
  print(birlestir);
  var dizi = birlestir.split("@");
  print(dizi);

  List<dynamic> liste2 = [1, true, "Aydın", DateTime(2025)];
}
