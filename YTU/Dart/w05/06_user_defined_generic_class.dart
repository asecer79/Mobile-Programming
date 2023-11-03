void main(List<String> args) {
  /*
  QueueInt q1 = QueueInt();
  q1.enQueue(20);
  q1.enQueue(25);
  q1.deQueue();

  print(q1.list);

  QueueString q2 = QueueString();
  q2.enQueue("Ayşe");
  q2.enQueue("Mahmut");
  q2.deQueue();

  print(q2.list);
  */

  Queue<int> numbers = Queue();
  numbers.enQueue(9);
  numbers.enQueue(4);
  numbers.enQueue(-1);
  numbers.enQueue(101);
  numbers.deQueue();
  print(numbers.list);

  Queue<String> names = Queue();
  names.enQueue("Mustafa");
  names.enQueue("Mahmutcan");
  names.enQueue("Şakir");
  names.enQueue("Memduh");
  names.deQueue();
  print(names.list);
}

//user defined custom generic class.
class Queue<T> {
  List<T> list = [];

  void enQueue(T item) {
    list.add(item);
  }

  T deQueue() {
    var val = list.first;
    list.remove(val);
    return val;
  }
}


/*
class QueueInt {
  List<int> list = [];

  void enQueue(int val) {
    list.add(val);
  }

  int deQueue() {
    var val = list.first;
    list.remove(val);
    return val;
  }
}

class QueueString {
  List<String> list = [];

  void enQueue(String val) {
    list.add(val);
  }

  String deQueue() {
    var val = list.first;
    list.remove(val);
    return val;
  }
}

*/