void main() {
  int n = 5; // number of elements in the array

  if (n == 0) {
    print(" not prime ");
    return;
  }

  if (n == 1) {
    print(" is prime ");
    return;
  }

  for (var i = 2; i < n; i++) {
    if (n % i == 0) {
      print(" is not prime ");
      return;
    }
  }

  print("$n is prime ");
}
