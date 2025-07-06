import 'dart:io';

void main() {
  List number = [];
  print("Enter how many numbers you want to add:");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    print("Enter number ${i}:");
    int num = int.parse(stdin.readLineSync()!);
    number.add(num);
  }

  for (int num in number) {
    sum += num;
  }
  print("Sum of numbers is: $sum");
}
