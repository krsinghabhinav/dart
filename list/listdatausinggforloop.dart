void main() {
  List<String> fruits = ["apple", "banana", "cherry", "date", "elderberry"];

  for (var f in fruits) {
    print(f);
  }

  List<String> hostelList = ["Shakti PG", "Krishna Boys Hostel", "Green Homes"];

  for (String hostel in hostelList) {
    print("🏠 Hostel Found: $hostel");
  }
}
