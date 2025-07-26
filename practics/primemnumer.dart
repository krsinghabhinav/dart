void main() {
  int num = 13;

  if (num == 0) {
    print("0 is not a prime number.");
    return;
  }

  if (num == 1) {
    print("1 is a prime number."); // According to your rule
    return;
  }

  for (var i = 2; i < num; i++) {
    if (num % i == 0) {
      print("$num is not a prime number.");
      return;
    }
  }

  print("$num is a prime number.");
}
