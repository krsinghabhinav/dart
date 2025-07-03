void checkTemp(int temp) {
  if (temp >= 35) {
    print({"Show hot weather"});
  } else if (temp >= 20 && temp < 35) {
    print({"Show Pleasant"});
  } else {
    print({"Show cold weather"});
  }
}

void main() {
  int temp = 15; // Change this value to test different outputs
  checkTemp(temp);
  // Output: Show Pleasant
}
