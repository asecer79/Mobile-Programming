void main(List<String> args) {
  Kuyruk<double> reel = Kuyruk();
  Kuyruk<int> tamsayi = Kuyruk();
  Kuyruk<String> isimler = Kuyruk();

  islem<int>(1, 1);
}

void dugum<K,V>(K key){
 //.... 
}

void islem<T>(T a,T b) {
  ///....
  ///
  ///
}

//built in - generic class

List<int> list = [];
List<String> list2 = [];
Map<int, String> coll = {};

//user defined

class SayiKuyrugu {
  List<int> list = [];
  void ekle(int a) {
    list.add(a);
  }

  int cikar() {
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
}

//generic user defined class
class Kuyruk<T> {
//generic user defined method
  List<T> list = [];
  void ekle(T a) {
    list.add(a);
  }

  T cikar() {
    var removed = list.first;
    list.remove(list.first);
    return removed;
  }
  //db yaz...
}
