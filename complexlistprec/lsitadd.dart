void main() {
  List num = [];
  num.add(2);

  // print(num);

  List<int> b = [3, 4];
  List<int> a = [2, 7];

  num.addAll(b);

  num.insert(1, 9);

  num.insertAll(2, a);
  print(num);

  print(num.contains(2));
}
