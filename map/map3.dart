void main() {
  List<Map<String, dynamic>> hostels = [
    {'name': 'A-Hostel', 'city': 'Delhi', 'type': 'Boys'},
    {'name': 'c-Hostel', 'city': 'Delhi', 'type': 'Boys'},
    {'name': 'd-Hostel', 'city': 'Delhi', 'type': 'Boys'},
    {'name': 'e-Hostel', 'city': 'Delhi', 'type': 'Boys'},
    {'name': 'f-Hostel', 'city': 'Delhi', 'type': 'Boys'},
    {'name': 'B-Hostel', 'city': 'Mumbai', 'type': 'Girls'},
  ];

  for (var h in hostels) {
    if (h["type"] == "Boys") {
      print(h["name"]);
    }
  }
}
