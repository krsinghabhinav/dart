import 'dart:io';

void main() {
  // Step 1: Input length
  print("Enter how many numbers:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  for (int i = 0; i < n; i++) {
    print("Enter number ${i + 1}:");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  List<bool> isVisited = List.filled(n, false);

  for (int i = 0; i < n; i++) {
    if (isVisited[i] == true) {
      continue;
    }

    int count = 1;
    for (int j = i + 1; j < n; j++) {
      if (numbers[i] == numbers[j]) {
        count++;
        isVisited[j] = true;
      }
    }
    print("${numbers[i]} occurs $count time(s)");
  }
}
