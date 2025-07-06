void main() {
  int n = 1221;
  int originalnumber = n;
  int rev = 0;
  while (n > 0) {
    int rem = n % 10;
    rev = rev * 10 + rem;
    n = n ~/ 10;
  }

  if (originalnumber == rev) {
    print("The number is a palindrome\n");
  } else {
    print("The number is not a palindrome\n");
  }
  print("revers number ==> $rev");
}

