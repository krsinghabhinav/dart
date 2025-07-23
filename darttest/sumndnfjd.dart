void main() {
  int n = 12451;
  int sum = 0;

  while (n > 0) {
    int num = n % 10;
    sum = sum + num;
    n = n ~/ 10;
  }
  print("$sum  number is ");
}
