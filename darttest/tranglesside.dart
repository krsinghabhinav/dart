void main() {
  int a = 5;
  int b = 7;
  int c = 10;

  if (a + b > c && a + c > b && b + c > a) {
    print("Valid Triangle");
  } else {
    print("Invalid Triangle");
  }
}
