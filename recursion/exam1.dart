void main() {
  printDescendiing(5);

  // print(factorial(5));

  // for (int i = 0; i <= 5; i++) {
  //   print(fibonacci(i)); // prints 0, 1, 1, 2, 3, 5
  // }
}

int factorial(int num) {
  if (num == 0) {
    return 1;
  } else if (num <= 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void printDescendiing(int n) {
  if (n == 0) {
    return;
  }
  print(n);
  printDescendiing(n - 1); // prints 5, 4, 3, 2, 1
}
