import 'dart:io';

void main() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    for (int k = i; k < n; k++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= 2 * i - 1; j++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}
