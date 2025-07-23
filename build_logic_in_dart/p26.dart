import 'dart:io';

void main() {
  int n = 5;

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$j");
    }
    for (int k = i - 1; k >= 1; k--){
    stdout.write("$k");

    } 
    stdout.write("\n");
  }
}
