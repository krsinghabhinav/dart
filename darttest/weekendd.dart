void main() {
  int day = 2;
  if (day >= 1 && day <= 5) {
    print("week day");
  } else if (day == 6 || day == 7) {
    print("weekend");
  } else {
    print("invalid week");
  }
}
