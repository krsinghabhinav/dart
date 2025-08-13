void main() {
  List<List<Map<String, dynamic>>> orders = [
    [
      {"product": "T-Shirt", "price": 500},
      {"product": "Jeans", "price": 1200},
    ],
    [
      {"product": "Shoes", "price": 2000},
      {"product": "Cap", "price": 300},
    ],
  ];
  int total = 0;
  // List<List<Map<String, dynamic>>> ordersdata = List<Map<String, dynamic>>[];
  for (int i = 0; i < orders.length; i++) {
    // print(orders[i]);
    for (int j = 0; j < orders[i].length; j++) {
      print(orders[i][j]["product"]);
      print(orders[i][j]["price"]);
      total += orders[i][j]["price"] as int;
    }
  }
  print(" total price =${total}");
}
