import 'dart:io';

void main() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    for (int k = 1; k <= n - i; k++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
}
