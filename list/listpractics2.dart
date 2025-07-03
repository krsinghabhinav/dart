List<Map<String, dynamic>> hostels = [
  {
    "name": "Krishna PG",
    "type": "PG",
    "city": "Delhi",
    "rent": 4500,
    "isAvailable": true,
  },
  {
    "name": "Lotus Girls Hostel",
    "type": "Girls",
    "city": "Mumbai",
    "rent": 5500,
    "isAvailable": false,
  },
  {
    "name": "Yuva Boys Hostel",
    "type": "Boys",
    "city": "Delhi",
    "rent": 4000,
    "isAvailable": true,
  },
  {
    "name": "Zen PG",
    "type": "PG",
    "city": "Noida",
    "rent": 6000,
    "isAvailable": true,
  },
];

void filterAvailable(List<Map<String, dynamic>> list) {
  for (var item in list) {
    if (item["isAvailable"] == true) {
      print("✅ Available Hostel: ${item["name"]}");
    }
  }
}

void categorizeHostelRent(List<Map<String, dynamic>> hostels) {
  for (var host in hostels) {
    int rent = host["rent"];

    if (rent < 4000) {
      print("${host['name']} is 🔹 Cheap");
    } else if (rent >= 4000 && rent < 6000) {
      print("${host['name']} is 🔸 Medium");
    } else {
      print("${host['name']} is 🔹 Expensive");
    }
  }
}

void searchByCity(List<Map<String, dynamic>> list, String cityName) {
  for (var item in list) {
    if (item["city"].toLowerCase() == cityName.toLowerCase()) {
      print("🔍 Found: ${item['name']}");
    }
  }
}


void hostelSummary(List<Map<String, dynamic>> list) {
  for (var h in list) {
    String status = "";
    if (h["isAvailable"] == true) {
      status = "✅ Available";
    } else {
      status = "❌ Not Available";
    }

    print("${h["name"]} | ${h["type"]} | ${h["city"]} | ₹${h["rent"]} | $status");
  }
}


void expensiveHostels(List<Map<String, dynamic>> data) {
  for (var h in data) {
    if (h["rent"] >= 5500) {
      print("🏢 ${h['name']} in ${h['city']} is Expensive (₹${h["rent"]})");
    }
  }
}
