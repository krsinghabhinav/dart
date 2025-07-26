void main() {
  List<List<List<List<int>>>> matrix = [
    [
      [
        [1, 2],
        [3, 4],
      ],
      [
        [5, 6],
        [7, 8],
      ],
    ],
    [
      [
        [9, 10],
        [11, 12],
      ],
      [
        [13, 14],
        [15, 16],
      ],
    ],
  ];

  for (int i = 0; i < matrix.length; i++) {
    print(matrix[i]);
    // print(matrix);
    for (int j = 0; j < matrix[i].length; j++) {
      // print(matrix[i][j]);
      for (int k = 0; k < matrix[i][j].length; k++) {
        // print(matrix[i][j][k]);
        for (int l = 0; l < matrix[i][j][k].length; l++) {
          // print(matrix[i][j][k][l]);
        }
      }
    }
  }
}
