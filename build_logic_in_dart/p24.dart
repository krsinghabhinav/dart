import 'dart:io';

void main() {
  int n = 5;

  for (int i = 1; i <= n; i++) {
    for (int j = i; j >= 1; j--) {
      stdout.write("$j");
    }
    stdout.write("\n");
  }
}
