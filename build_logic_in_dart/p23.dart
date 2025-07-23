import 'dart:io';

void main() {
  int n = 5;

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      if (i >= 2 && j >= 2 && i < n && j < n) {
        stdout.write(" ");
      } else {
        stdout.write("*");
      }
    }
    stdout.write("\n");
  }
}
