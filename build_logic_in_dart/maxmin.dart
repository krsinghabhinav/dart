import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter how many numbers you want to add:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    print("Enter number $i:");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // Now list is filled; we can safely initialize max and min
  int max = numbers[0];
  int min = numbers[0];

  // for (int num in numbers) {
  //   if (num > max) {
  //     max = num;
  //   } else if (num < min) {
  //     min = num;
  //   }
  // }

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    } else if (numbers[i] < min) {
      min = numbers[i];
    }
  }
  print("Maximum number is: $max");
  print("Minimum number is: $min");
}
