void checkAtmMachine(String atmType) {
  if (atmType == "withdraw") {
    print("You can withdraw cash");
  } else if (atmType == "deposit") {
    print("You can deposit cash");
  } else if (atmType == "balance") {
    print("You can check your balance");
  } else {
    print("Invalid ATM operation");
  }
}

void main() {
  String atmType =
      "withdraw"; // Change this to "deposit", "balance", or any other type to test different outputs
  checkAtmMachine(atmType);
  // Output: You can withdraw cash
}
