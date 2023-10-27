mixin Flyable {
  void fly() {
    print('I can fly!');
  }
}

mixin Swimmable {
  void swim() {
    print('I can swim!');
  }
}

mixin Walkable {
  void walk() {
    print('I can walk!');
  }
}

class Dog with Walkable {
  Dog() {
    walk();
  }
}

class Bird with Walkable, Flyable {
  Bird() {
    walk();
    fly();
  }
}
