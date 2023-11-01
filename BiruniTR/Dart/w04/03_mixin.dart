void main(List<String> args) {
  Kus k = Kus();
  k.m();
}

mixin Ucabilen {
  int a = 1;
  void uc() {
    print("Uçabilirim");
  }
}

mixin Yuzebilen {
  int b = 2;
  void yuz() {
    print("Yüzebilirim");
  }
}

mixin Kosabilen {
  int c = 3;
  void kos() {
    print("Koşabilirim");
  }
}

class Kus with Ucabilen, Kosabilen {
  //....
  void m() {
    print(a);
    uc();
    kos();
  }
}
