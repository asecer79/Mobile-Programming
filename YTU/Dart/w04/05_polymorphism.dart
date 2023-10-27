import '02_inheritance.dart';

void main(List<String> args) {
  User user = User("", "");
  User adminUser = AdminUser("", "");
  User powerUser = PowerUser("", "");

  List<User> users = [User("", ""), AdminUser("", ""), PowerUser("", "")];

  for (var item in users) {
    item.logOut();
    //polymorphism will call different method for each different object.
  }
}
