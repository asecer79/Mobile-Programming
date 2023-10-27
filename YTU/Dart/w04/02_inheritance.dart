void main(List<String> args) {
  /*User user1 = User("asecer", "123");
  AnonymousUser anonymousUser1 = AnonymousUser("asecer", "123");
  AdminUser adminUser1 = AdminUser("asecer", "123");
  PowerUser powerUser1 = PowerUser("asecer", "123");

  AdminUser adminUser2 = AdminUser.secureObject("asecer", "123", true);
  PowerUser powerUser2 = PowerUser.secureObject("asecer", "123", true);
*/
  /*user1.login();
  anonymousUser1.login();
  adminUser1.login();
  powerUser1.login();*/

  //User user = User.secureObject("userName", "password", true);

  //AdminUser adminUser = AdminUser.secureObject("userName", "password", true);

  PowerUser powerUser = PowerUser.secureObject("userName", "password", true);
}

class User {
  User(this.userName, this.password) {
    //
    print("User(this.userName, this.password)");
  }
  User.secureObject(this.userName, this.password, bool opt) {
    //..
    print("User.secureObject(this.userName, this.password, bool opt)");
  }
  String? userName; //public member
  String? password; //public member
  void login() {
    //public member
    print("User logged in! ${userName}");
  }

  void logOut() {
    //public member
    print("User logged out!  ${userName}");
  }

  //private member
  bool _anyMethod(int x) {
    return x == 0;
  }
}

//keyword subClass  inherits  superClass
class AnonymousUser extends User {
  AnonymousUser(String uname, String pwd) : super(uname, pwd);
  //...

//mutation/ gene changes
  @override
  void login() {
    //public member
    print("AnonymousUser logged in! ${userName}");
  }

  //mutation/ gene changes
  @override
  void logOut() {
    //public member
    print("AnonymousUser logged out! ${userName}");
  }

  void _anonymousUserSpecialMethod() {
    //...
  }
}

class AdminUser extends User {
  AdminUser(String uname, String pwd) : super(uname, pwd) {
    print("AdminUser(String uname, String pwd) : super(uname, pwd)");
  }
  AdminUser.secureObject(String uname, String pwd, bool opt)
      : super.secureObject(uname, pwd, opt) {
    print(
        "AdminUser.secureObject(String uname, String pwd, bool opt): super.secureObject(uname, pwd, opt)");
  }

  //mutation/ gene changes
  @override
  void login() {
    //public member
    print("AdminUser logged in! ${userName}");
  }

  //mutation/ gene changes
  @override
  void logOut() {
    //public member
    print("AdminUser logged out! ${userName}");
  }

  void _adminUserSpecialMethod() {
    //...
  }
}

class PowerUser extends AdminUser {
  PowerUser(String uname, String pwd) : super(uname, pwd) {
    print("PowerUser(String uname, String pwd) : super(uname, pwd)");
  }
  PowerUser.secureObject(String uname, String pwd, bool opt)
      : super.secureObject(uname, pwd, opt) {
    print(
        "PowerUser.secureObject(String uname, String pwd, bool opt): super.secureObject(uname, pwd, opt)");
  }
//mutation/ gene changes
  @override
  void login() {
    //public member
    print("PowerUser logged in! ${userName}");
  }

  //mutation/ gene changes
  @override
  void logOut() {
    //public member
    print("PowerUser logged out! ${userName}");
  }

  void _powerUserSpecialMethod() {
    //...
  }
}
