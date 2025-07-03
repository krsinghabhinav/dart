void checksound() {
  bool isSoundEnable = true;
  bool isVibrationEnable = true;

  if (isSoundEnable && isVibrationEnable) {
    print("Sound and Vibration are enabled");
  } else if (isSoundEnable) {
    print("Only Sound is enabled");
  } else if (isVibrationEnable) {
    print("Only Vibration is enabled");
  } else {
    print("Neither Sound nor Vibration is enabled");
  }
}

void main() {
  checksound();
  // Output: Sound and Vibration are enabled
}
