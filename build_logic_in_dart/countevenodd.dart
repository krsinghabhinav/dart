import 'dart:io';

void main() {
  print("Enter how many numbers you want to add:");
  int n = int.parse(stdin.readLineSync()!);
  int evenCount = 0;
  int oddCount = 0;
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print("Even Count ==> $evenCount");
  print("Even Count ==> $oddCount");
}
