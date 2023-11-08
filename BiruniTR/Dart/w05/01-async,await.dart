// async , await

void main(List<String> args) async {
  print("İşler Başladı");

  Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("İş A $i");
    }
    print("İş A bitti");
  });

  Future.delayed(Duration(days: 0), () async {
    for (var i = 0; i < 15; i++) {
      print("İş B $i");
      await Future.delayed(Duration(seconds: 2));
    }
    print("İş B bitti");
  });

  print("****** Çok acil bir iş bitti *****");

  print("Tüm işler bitti");
}
