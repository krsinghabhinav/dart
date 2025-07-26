void main() {
  int gender = 1; // 1 = Male, 2 = Female, 3 = Unisex
  bool isAC = true;
  bool isFoodIncluded = false;
  bool isPowerBackup = true;
  String? selectedCity = "Lucknow";
  String? selectedPlace = null;

  // Gender mapping
  String preferredGender = gender == 1
      ? "Male"
      : gender == 2
          ? "Female"
          : "Unisex";

  // Facilities list
  List<String> facilities = [];
  if (isAC) facilities.add("AC");
  if (isFoodIncluded) facilities.add("Food");
  if (isPowerBackup) facilities.add("Power Backup");

  // Location logic
  String location = selectedPlace ?? selectedCity ?? "Any";

  // Final map
  Map<String, dynamic> output = {
    "preferred_gender": preferredGender,
    "facilities": facilities,
    "location": location,
  };

  print(output);
}
