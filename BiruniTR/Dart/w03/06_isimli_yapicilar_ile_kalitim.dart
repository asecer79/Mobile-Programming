void main(List<String> args) {
  B b = B(2);
  //B c = B.ym2(2, 2);
  C c = C(2);
}

class A {
  //A();
  A.ym1(int a) {
    //....
  }
  //A.ym2(int a, int b);

  int? a;
  void m() {}
}

class B extends A {
  B(int a) : super.ym1(a) {
    //....
  }
  // B.ym2(int a, int b) : super.ym2(a, b);
}

class C extends B {
  C(int a) : super(a) {
    //....
  }
}
