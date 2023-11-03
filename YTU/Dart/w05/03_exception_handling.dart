import '04_user_defined_exception_class.dart';

void main(List<String> args) {
  dynamic a = 5;
  dynamic b = null;

  try {
    //..
    if (b is String) {
      throw AlgebraicDivisionException("b must be number....");
    }

    if (b == 0) {
      throw AlgebraicDivisionException("b can not be 0....");
    }

    if (b == null) {
      throw AlgebraicDivisionException("b can not be null....");
    }

    print(a / b);

    //...
  } on FormatException {
    print("Please correct... Exception");
  }
  
  /* on DomException {
    print("Opps! please be careful...DomException");
  } on HttpException {
    print("Unfortunately doing wrong...");
  } */
  catch (e) {
    print(e);
  }
}
