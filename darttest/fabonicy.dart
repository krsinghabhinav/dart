void main() {
  int n = 8;
  int a = 0, b = 1;
  print("\n $a\n $b");
  for (int i = 3; i <= n; i++) {
    int c = a + b;
    print(" $c");
    a = b;
    b = c;
  }
}
