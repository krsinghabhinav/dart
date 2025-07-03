void main() {
  // Map<String, int> intty = {"a": 1, "b": 2, "c": 3};
  // print("${intty.keys}  , ${intty.values}");

  // Map<String, dynamic> student = {'name': 'Ravi', 'age': 22, 'marks': 85.5};

  // print(student['name']);

  // if (student.containsKey("marks")) ;
  // print(student['marks']);
  // print(" mark available");

  Map<String, dynamic> hostel = {
    'name': 'Sunrise PG',
    'city': 'Bangalore',
    'type': 'Boys',
    'facilities': ['WiFi', 'Laundry', 'CCTV'],
  };
  for (var host in hostel.entries) {
    if (host.key == "facilities") {
      for (var fac in host.value) {
        print("${fac} is available");
      }
    }
  }
}
