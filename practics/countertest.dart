void incrementCount(int count) {
  count++;
  print("Count after increment: $count");

  if (count > 10) {
    print("Limit reached");
  } else {
    print("Count is within limit");
  }

  void main() {
    int count = 0;
    print("Initial count: $count");
    incrementCount(count);
    print("Final count: $count");
  }
}
