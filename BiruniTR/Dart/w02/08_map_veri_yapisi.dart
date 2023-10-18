void main(List<String> args) {
  //c#, java => dictionary
  //anahtar / değer
  //json convert işlemlerinde
  Map<String, String> ogrenciler = {
    "1": "Ahmet",
    "2": "Mustafa",
    "4": "Şahin",
    "6": "Şaziye",
    "6": "Ayşe",
  };

  ogrenciler["6"] = "Mualla";

  for (var element in ogrenciler.entries) {
    print("${element.key}: ${element.value}");
  }

  for (var element in ogrenciler.keys) {
    print(ogrenciler[element]);
  }

  Map<dynamic, dynamic> satir1 = {"Id": 4, "Name": "C# book", "Date": DateTime};
  Map<dynamic, dynamic> satir2 = {"Id": 5, "Name": "JS book", "Date": DateTime};
  Map<dynamic, dynamic> satir3 = {
    "Id": 6,
    "Name": "CSS book",
    "Date": DateTime
  };

  List<Map<dynamic, dynamic>> books = [
    satir1,
    satir2,
    satir3,
  ];
}
