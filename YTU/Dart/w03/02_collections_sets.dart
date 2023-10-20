void main(List<String> args) {
  //looks like mathematical set

  //Set A = {1, 2, 3, 4}; //dynamic
  //Set<dynmaic> A = {1, 2, 3, 4}; //dynamic
  //Set A = <int>{1, 2, 3, 4};
  Set<int> A = {1, 2, 3, 4};
  //set elements cannot be repeated;
  //sets are not ordered list

  Set<int> B = {1, 2, 3, 4, 4, 4, 5, 9, -4};
  //B[0] = 1; err, unordered
  B.add(-69);
  B.forEach((element) {
    print(element);
  });
  print(B);

  print(A.union(B));
  print(A.intersection(B));
  print(A.difference(B));
  print(A.where((element) => element > 5));
  print(A.map((e) => 23));
  print(A.take(3));
  //print(A.skipWhile((value) => value >2));
}
