import 'dart:io';

void main() {
  print("Entet number 1");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2");
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = 0;

  sum = num1 + num2;

  print("Sum number  => $sum");
}
