void checkParking(int isparking ){
  if (isparking == 1) {
    print("Parking is available");
  } else if (isparking == 0) {
    print("Parking is not available");
  } else {
    print("Invalid parking status");
  }
}

void main() {
  int isparking = 1; // Change this to 0 or any other value to test different outputs
  checkParking(isparking);
  // Output: Parking is available
}