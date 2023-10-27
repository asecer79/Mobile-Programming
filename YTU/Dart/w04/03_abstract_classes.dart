void main(List<String> args) {
  //StandardMath standardMath = StandardMath(); //error
}

//it may contain everything as regular class
//cannot be instantiate, cannot be user as object.
//can only be inherited
abstract class StandardMath {
  //instance members and static member.
  double _PI = 3.14;
  double getPI() {
    //concrete method/has body
    return _PI;
  }

  //abstract method members//without body
  double sum(double x, double y);
  double min(double x, double y);
  double mul(double x, double y);
  double div(double x, double y);
}

abstract class AdvancedMath {
  //abstract method members//without body
  double int(double fx, double x);
  double diff(double fx, double x);
  double mul(double fx, double x);
  double div(double fx, double xy);
}

//multiple interface implements are ok
//single inheritance is ok.
//abstract classes can be used in dart lang as interfaces by the keyword implements.
class Math extends StandardMath implements AdvancedMath {
  @override
  double div(double x, double y) {
    return x / y;
  }

  @override
  double min(double x, double y) {
    return x - y;
  }

  @override
  double mul(double x, double y) {
    return x * y;
  }

  @override
  double sum(double x, double y) {
   return x + y;
  }
  
  @override
  double _PI=3.14;
  
  @override
  double diff(double fx, double x) {
    // TODO: implement diff
    throw UnimplementedError();
  }
  
  @override
  double getPI() {
    // TODO: implement getPI
    throw UnimplementedError();
  }
  
  @override
  double int(double fx, double x) {
    // TODO: implement int
    throw UnimplementedError();
  }
}
