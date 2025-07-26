void main() {
  int number = 12345;
  int reverse = 0;
  while (number > 0) {
    int rem = number % 10;
    reverse = (reverse * 10) + rem;
    number = number ~/ 10;
  }

  print("Reversed number is: $reverse");
}
