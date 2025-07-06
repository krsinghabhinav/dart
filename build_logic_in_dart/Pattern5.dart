import 'dart:io';

void main() {
  int n = 5;

  for (int i = n; i >=1; i--) {
    for (int j = n; j >= i; j--) {
      stdout.write(j);
    }
    stdout.write('\n');
  }
}
