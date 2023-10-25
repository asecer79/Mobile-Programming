void main(List<String> args) {
  /*User user = User();
  user.kullaniciAdi = "asecer1";
  user.sifre = "123";
  user.girisYap();

//.....
  AnonimUser anonimUser = AnonimUser();
  anonimUser.kullaniciAdi = "asecer2";
  anonimUser.sifre = "123";
  anonimUser.girisYap();

  //.....
  AdminUser adminUser = AdminUser();
  adminUser.kullaniciAdi = "asecer3";
  adminUser.sifre = "123";
  adminUser.girisYap();
  

  GucluAdminUser gucluAdminUser = GucluAdminUser();
  gucluAdminUser.kullaniciAdi = "gucluAdminUser";
  gucluAdminUser.sifre = "123";
  gucluAdminUser.girisYap();
  */

  //polymorphism
  List<User> kullanicilar = [];
  kullanicilar.add(User());
  kullanicilar.add(AnonimUser());
  kullanicilar.add(AdminUser());
  kullanicilar.add(GucluAdminUser());

  for (var item in kullanicilar) {
    item.girisYap();
  }

  kullanciKontrol(AdminUser());
  kullanciKontrol(User());
}

//polymorph örneği
void kullanciKontrol(User user) {
  user.girisYap();
}

class User {
  User() {
    // print("User() nesnesi oluştu....");
  }
  String? kullaniciAdi;
  String? sifre;

  void girisYap() {
    print("User Kullıcı doğrulandı");
    print("User Yetkiler alındı");
    print("User Giriş yapti");
  }

  void cikisYap() {
    print("User oturum temizlendi");
    print("User çıkış yaptı");
  }

  void _ozelBisey() {}
}

class AnonimUser extends User {
  AnonimUser() {
    // print("AnonimUser() nesnesi oluştu....");
  }

  @override
  void girisYap() {
    print("AnonimUser Kullıcı doğrulandı");
    print("AnonimUser Yetkiler alındı");
    print("AnonimUser Giriş yapti");
  }

  @override
  void cikisYap() {
    print("AnonimUser oturum temizlendi");
    print("AnonimUser çıkış yaptı");
  }

  void A() {}
}

class AdminUser extends User {
  AdminUser() {
    // print("AdminUser() nesnesi oluştu....");
  }

  @override
  void girisYap() {
    print("AdminUser Kullıcı doğrulandı");
    print("AdminUser Yetkiler alındı");
    print("AdminUser Giriş yapti");
  }

  @override
  void cikisYap() {
    print("AdminUser oturum temizlendi");
    print("AdminUser çıkış yaptı");
  }

  void _A() {} //private
}

class GucluAdminUser extends AdminUser {
  GucluAdminUser() {
    // print("GucluAdminUser() nesnesi oluştu....");
  }

  @override
  void girisYap() {
    print("GucluAdminUser Kullıcı doğrulandı");
    print("GucluAdminUser Yetkiler alındı");
    print("GucluAdminUser Giriş yapti");
  }

  void C() {}
}
