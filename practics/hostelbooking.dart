void hostelBooking(String gender, String roomType, int days, int price) {
  if (gender == "male" && roomType == "ac" && days == 1 && price == 1000) {
    print("You have booked a room for 1 day at a price of 1000");
  } else if (gender == "female" &&
      roomType == "non-ac" &&
      days == 2 &&
      price == 800) {
    print("You have booked a room for 2 days at a price of 800");
  } else {
    print("Invalid booking");
  }
}
