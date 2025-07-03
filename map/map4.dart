import '../list/listpractics2.dart';

class HostelModel {
  final int id;
  final String name;
  final String city;
  final String type;
  final double rating;
  final List<String> facilities;
  final List<RoomModel> rooms;

  HostelModel({
    required this.id,
    required this.name,
    required this.city,
    required this.type,
    required this.rating,
    required this.facilities,
    required this.rooms,
  });

  factory HostelModel.fromJson(Map<String, dynamic> json) {
    return HostelModel(
      id: json['id'],
      name: json['name'],
      city: json['city'],
      type: json['type'],
      rating: (json['rating'] as num).toDouble(),
      facilities: List<String>.from(json['facilities']),
      rooms: (json['rooms'] as List<dynamic>)
          .map((roomJson) => RoomModel.fromJson(roomJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'city': city,
      'type': type,
      'rating': rating,
      'facilities': facilities,
      'rooms': rooms.map((room) => room.toJson()).toList(),
    };
  }
}

class RoomModel {
  final String roomNo;
  final int price;
  final bool isAvailable;

  RoomModel({
    required this.roomNo,
    required this.price,
    required this.isAvailable,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) {
    return RoomModel(
      roomNo: json['roomNo'],
      price: json['price'],
      isAvailable: json['isAvailable'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'roomNo': roomNo, 'price': price, 'isAvailable': isAvailable};
  }
}

void main() {
  List<HostelModel> dummyHostelList = [
    HostelModel(
      id: 1,
      name: 'Sunrise PG',
      city: 'Delhi',
      type: 'Boys',
      rating: 4.2,
      facilities: ['WiFi', 'CCTV', 'Laundry', 'RO Water'],
      rooms: [
        RoomModel(roomNo: '101', price: 5000, isAvailable: true),
        RoomModel(roomNo: '102', price: 5200, isAvailable: false),
      ],
    ),
    HostelModel(
      id: 2,
      name: 'Moonlight Hostel',
      city: 'Bangalore',
      type: 'Girls',
      rating: 4.6,
      facilities: ['WiFi', 'Power Backup', 'AC', 'Laundry'],
      rooms: [
        RoomModel(roomNo: '201', price: 3000, isAvailable: true),
        RoomModel(roomNo: '202', price: 6200, isAvailable: true),
      ],
    ),
    HostelModel(
      id: 3,
      name: 'GreenView PG',
      city: 'Mumbai',
      type: 'Boys',
      rating: 4.0,
      facilities: ['CCTV', 'Laundry', 'WiFi'],
      rooms: [
        RoomModel(roomNo: '301', price: 5500, isAvailable: true),
        RoomModel(roomNo: '302', price: 5700, isAvailable: false),
      ],
    ),
    HostelModel(
      id: 4,
      name: 'Skyline Hostel',
      city: 'Chennai',
      type: 'Girls',
      rating: 4.3,
      facilities: ['AC', 'Power Backup', 'RO Water', 'WiFi'],
      rooms: [
        RoomModel(roomNo: '401', price: 5800, isAvailable: true),
        RoomModel(roomNo: '402', price: 5900, isAvailable: true),
      ],
    ),
    HostelModel(
      id: 5,
      name: 'Metro Stay',
      city: 'Hyderabad',
      type: 'Boys',
      rating: 3.9,
      facilities: ['Laundry', 'WiFi', 'CCTV'],
      rooms: [
        RoomModel(roomNo: '501', price: 5100, isAvailable: true),
        RoomModel(roomNo: '502', price: 5300, isAvailable: false),
      ],
    ),
  ];

  // Iterate over the list of hostels and print their names
  for (var h in dummyHostelList) {
    if (h.type == "Boys") {
      // print(h.name);
    }
    // print(h.name);
  }

  for (var fa in dummyHostelList) {
    if (fa.facilities.contains("CCTV")) {
      // print("${fa.name} ${fa.city} ");
    }
    // print(fa.facilities);
  }

  for (var r in dummyHostelList) {
     if (r.facilities.contains("CCTV")) {
      for (var rom in r.rooms) {
        if (rom.isAvailable == true && rom.price > 5000) {
          print("${rom.roomNo}");
        }
      }
    }
  }
}
