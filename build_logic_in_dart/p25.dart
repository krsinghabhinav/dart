import 'dart:io';

void main() {
  int n = 5;

  for (int i = n; i >=1; i--) {
    for (int j = 1; j <=i; j++) {
      stdout.write("$j");
    }
    stdout.write("\n");
  }
   for (int i = 2; i <=n; i++) {
    for (int j = 1; j <=i; j++) {
      stdout.write("$j");
    }
    stdout.write("\n");
  }
}
