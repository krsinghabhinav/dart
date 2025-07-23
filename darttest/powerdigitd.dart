import 'dart:math';

void main() {
  int n = 153;
  int original = n; // Store the original value
  int sum = 0;
  int count = 0;

  // Step 1: Count the digits
  int temp = n;
  while (temp > 0) {
    temp = temp ~/ 10;
    count++;
  }

  print("count ===> $count");

  // Step 2: Calculate sum of digits raised to the power of count
  temp = n;
  while (temp > 0) {
    int r = temp % 10;
    sum += pow(r, count).toInt();
    temp = temp ~/ 10;
  }

  print("Sum of digits^count => $sum");

  // Optional: Check if Armstrong number
  if (sum == original) {
    print("$original is an Armstrong number");
  } else {
    print("$original is not an Armstrong number");
  }
}
