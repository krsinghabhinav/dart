import 'dart:io';

void main() {
  print("Enter a number 1");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter a number 2");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Enter a number 3");
  int num3 = int.parse(stdin.readLineSync()!);

  print("Enter a number 4");
  int num4 = int.parse(stdin.readLineSync()!);

  print("Enter a number 5");
  int num5 = int.parse(stdin.readLineSync()!);

  num1 > num2 && num1 > num3 && num1 > num4 && num1 > num5
      ? print("${num1} is gratesrt")
      : num2 > num1 && num2 > num3 && num2 > num4 && num2 > num5
      ? print("${num2} is gratesrt")
      : num3 > num1 && num3 > num2 && num3 > num4 && num3 > num5
      ? print("${num3} is gratesrt")
      : num4 > num1 && num4 > num2 && num4 > num3 && num4 > num5
      ? print("${num4} is gratesrt")
      : print("${num5} is gratesrt");
}
