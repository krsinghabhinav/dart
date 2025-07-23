import 'dart:io';

void main() {
  int n = 5;

  // Upper half
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print(""); // Move to next line
  }

  // Lower half
  for (int i = 2; i <= n; i++) {
    for (int j = n; j >= i; j--) {
      stdout.write("*");
    }
    print(""); // Move to next line
  }
}
