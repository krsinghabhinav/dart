void main() {
  List<List<int>> num = [
    [1, 3, 4, 5],
    [3, 4],
    [6, 7],
    [4, 5],
    [1, 3, 5],
    [1, 5],
  ];

  for (int i = 0; i < num.length; i++) {
    print(num[i]);
    for (int j = 0; j < num[i].length; j++) {
      print(num[i][j]);
    }
    ;
  }
}
