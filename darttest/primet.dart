void main() {
  int n = 7;
  bool isPrime = true;

  if (n <= 1) {
    isPrime = false;
  } else {
    for (var i = 2; i < n / 2; i++) {
      if (n % i == 0) {
        isPrime = false;
        break;
      }
    }
    print(isPrime);
  }
}
