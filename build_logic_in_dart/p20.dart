import 'dart:io';

void main() {
  // Step 1: Input
  // print("Enter number of rows:");
  // int rows = int.parse(stdin.readLineSync()!);
  int rows = 5;

  // Step 2: Outer loop for rows
  for (int i = 1; i <= rows; i++) {
    // Step 3: Print spaces
    for (int j = 1; j <= rows - i; j++) {
      stdout.write(" ");
    }

    // Step 4: Print stars
    for (int k = 1; k <= i; k++) {
      stdout.write(" $k");
    }

    // Step 5: New line
    print("");
  }
}
