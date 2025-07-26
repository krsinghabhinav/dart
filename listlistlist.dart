void main() {
  List<List<List<int>>> num = [
    [
      [1, 2],
      [3, 4],
    ],
    [
      [5, 6],
      [7, 8],
    ],
    [
      [7, 9],
      [2, 5],
    ],
  ];

  // print(num[0]);
  // print(num[0][0]);

  for (var i in num) {
    // print(i);
    for (var j in i) {
      // print(j[0]);
    }
  }

  for (int i = 0; i < num.length; i++) {
    print(num[i]);
    print("================");
    for (int j = 0; j < num[i].length; j++) {
      print(num[i][j]);
      for (int k = 0; k < num[i][j].length; k++) {
        // print(num[i][j][k]);
      }
    }
    print("================");
  }
}
