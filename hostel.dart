void checkHostel(String hostelType) {
  if (hostelType == "pg") {
    print("You are in a PG hostel");
  } else if (hostelType == "room") {
    print("you are in a Room hostel");
  } else {
    print("You are in a different type of hostel");
  }
}

void main() {
  String hostelType =
      "room"; // Change this to "room" or any other type to test different outputs
  checkHostel(hostelType);
}
