import 'dart:io';

void main() {
  int n = 5;
  for (int i = 1; i <= n; i++) {
    for (int k = i; k < n; k++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= 2 * i - 1; j++) {
      if (j > 1 && j < (2 * i - 1)) {
        stdout.write(" ");
      } else {
        stdout.write("*");
      }
    }
    stdout.write("\n");
  }
  for (int i = n; i >= 1; i--) {
    for (int k = n; k > i; k--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= 2 * i - 1; j++) {
      if (j > 1 && j < (2 * i - 1)) {
        stdout.write(" ");
      } else {
        stdout.write("*");
      }
    }
    stdout.write("\n");
  }
}
