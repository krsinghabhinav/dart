void main() {
  int n = 8;

  if (n == 0) {
    print("prime not number ");
    return;
  }

  if (n == 1) {
    print("1 prime number");
    return;
  }

  for (var i = 2; i < n; i++) {       
    if (n % i == 0) {
      print("prime not number ");
      return;
    }
  }
  print("$n is a prime number.");
}
