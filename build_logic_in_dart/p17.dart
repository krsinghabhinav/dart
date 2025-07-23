import 'dart:io';

void main() {
  int n = 5;

  // for (int i = 1; i <= n; i++) {
  //   for (int j = 1; j <= i; j++) {
  //     if (i >= 2 && j <= i - 1) {
  //       stdout.write(" ");
  //     } else {
  //       stdout.write("*");
  //     }
  //   }
  //   stdout.write("\n");
  // }
  for (int i = 1; i <= n; i++) {
    for (int j = n; j >= i; j--) {
      if (j <= n-i) {
        stdout.write(" ");
      } else {
        stdout.write("*");
      }
    }
    stdout.write("\n");
  }
}
