void main() {
  List<Map<String, dynamic>> hostels = [
    {
      "name": "Aman PG",
      "type": "PG",
      "location": "Jaipur",
      "isAvailable": true,
    },
    {
      "name": "Lotus Hostel",
      "type": "Girls",
      "location": "Delhi",
      "isAvailable": true,
    },
    {
      "name": "Sunrise PG",
      "type": "Boys",
      "location": "Delhi",
      "isAvailable": false,
    },
    {
      "name": "Elite Girls",
      "type": "Girls",
      "location": "Mumbai",
      "isAvailable": true,
    },
  ];
  for (var hostel in hostels) {
    // print("${hostel["name"]}");
    if (hostel["type"] == "Girls" &&
        hostel["isAvailable"] == true &&
        hostel["location"] == "Mumbai") {
      print("${hostel["name"]} is available");
    }

    if (hostel["name"] == "Sunrise PG") {
      hostel.remove("Sunrise PG");
      print(hostel["name"]);
      print(" ${hostel["name"]} is removed");
    }
  }
}
