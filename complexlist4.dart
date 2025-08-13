void main(){
  List<Map<String, dynamic>> deliveryGraphData = [
  {
    "hub_id": "HUB001",
    "location": "Sector 62, Noida",
    "vehicles": [
      {
        "vehicle_id": "V001",
        "driver": "Ankit Singh",
        "capacity": 20,
        "current_load": 12,
        "battery_level": 78,
        "status": "active",
        "current_position": {"lat": 28.6281, "lng": 77.3734},
        "planned_route": [
          {"order_id": "ORD101", "lat": 28.6314, "lng": 77.3790, "priority": 2},
          {"order_id": "ORD102", "lat": 28.6297, "lng": 77.3750, "priority": 1},
          {"order_id": "ORD103", "lat": 28.6260, "lng": 77.3805, "priority": 3}
        ]
      },
      {
        "vehicle_id": "V002",
        "driver": "Megha Rathi",
        "capacity": 15,
        "current_load": 15,
        "battery_level": 34,
        "status": "recharging",
        "current_position": {"lat": 28.6275, "lng": 77.3700},
        "planned_route": []
      }
    ],
    "orders": [
      {
        "order_id": "ORD101",
        "customer_name": "Rahul Mehra",
        "delivery_address": "A-45, Sector 63",
        "delivery_slot": "10:00-12:00",
        "weight": 2.5,
        "priority": 2
      },
      {
        "order_id": "ORD102",
        "customer_name": "Shruti Jain",
        "delivery_address": "B-12, Sector 62",
        "delivery_slot": "09:30-11:00",
        "weight": 1.2,
        "priority": 1
      },
      {
        "order_id": "ORD103",
        "customer_name": "Ankur Bansal",
        "delivery_address": "G-99, Sector 64",
        "delivery_slot": "11:30-13:00",
        "weight": 3.1,
        "priority": 3
      },
      {
        "order_id": "ORD104",
        "customer_name": "Neha Kapur",
        "delivery_address": "E-21, Sector 61",
        "delivery_slot": "13:30-15:00",
        "weight": 2.7,
        "priority": 2
      }
    ],
    "traffic_zones": [
      {
        "zone": "Sector 63",
        "congestion_level": "high",
        "expected_delay": 15,
        "alternate_route": ["Sector 62", "Sector 64"]
      },
      {
        "zone": "Sector 61",
        "congestion_level": "medium",
        "expected_delay": 7
      }
    ]
  }
];



}