void main() {
  int num = 1222223451;
  int digit = 2;
  int count = 0;
  while (num > 0) {
    if (num % 10 == digit) {
      count++;
    }
    num = num ~/ 10;
  }

  print("count digit $count number is $digit"); 
}
