import 'dart:io';

void main() {
  int n = 5;

  for (int i = n; i >= 1; i--) {
    for (int k = n; k > i; k--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= 2 * i - 1; j++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}
