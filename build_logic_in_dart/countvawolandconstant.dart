import 'dart:io';

void main() {
  // Step 1: Input lo
  print("Enter a word or sentence:");
  String input = stdin.readLineSync()!.toLowerCase();

  int vowelCount = 0;
  int consonantCount = 0;

  // Step 2: Loop each character
  for (int i = 0; i < input.length; i++) {
    String ch = input[i];
    if (ch == "a" ||
        ch == "e" ||
        ch == "i" ||
        ch == "o" ||
        ch == "u" ||
        ch == "A" ||
        ch == "I" ||
        ch == "E" ||
        ch == "O" ||
        ch == "U") {
      vowelCount++;
    } else {
      consonantCount++;
    }
  }

  print("${vowelCount}  and ${consonantCount}");
}
