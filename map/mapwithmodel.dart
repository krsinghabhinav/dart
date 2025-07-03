class Hostel {
  String name;
  String city;
  String type;
  List<String> facilities;

  Hostel({
    required this.name,
    required this.city,
    required this.type,
    required this.facilities,
  });

  // Factory constructor to create Hostel from Map
  factory Hostel.fromMap(Map<String, dynamic> map) {
    return Hostel(
      name: map['name'],
      city: map['city'],
      type: map['type'],
      facilities: List<String>.from(map['facilities']),
    );
  }
}

void main() {
  Map<String, dynamic> hostel = {
    'name': 'Sunrise PG',
    'city': 'Bangalore',
    'type': 'Boys',
    'facilities': ['WiFi', 'Laundry', 'CCTV'],
  };

  Hostel hostels = Hostel.fromMap(hostel);

  for (var hsot in hostels.facilities) {
    print(hsot);
  }
}


