void main() {
  int n = 1234567;
  int rev = 0;

  while (n > 0) {
    int rem = n % 10;
    rev = rev * 10 + rem;
    n = n ~/ 10;
  }

  print("reverse palindrom number ==>$rev");
}
