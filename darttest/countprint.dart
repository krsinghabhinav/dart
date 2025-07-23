void main() {
  int n = 23232433;
  int count = 0;
  while (n > 0) {
    n = n ~/ 10;
    count++;
  }
  print("count  $count");
}
