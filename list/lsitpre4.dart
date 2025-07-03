void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Phone', 'inStock': true},
    {'name': 'Camera', 'inStock': false},
    {'name': 'Charger', 'inStock': true},
  ];
  // String query = "Pho".toLowerCase(); // Convert query to lowercase

  // for (var pho in products) {
  //   if (pho["name"].toLowerCase().contains(query)) {
  //     print(pho["name"]);
  //   }
  // }

  List<Map<String, dynamic>> monthlySales = [
    {'month': 'Jan', 'orders': 1200},
    {'month': 'Feb', 'orders': 800},
    {'month': 'Mar', 'orders': 1500},
  ];

  for (var m in monthlySales) {
    if (m["orders"] > 1000) {
      print("📈 High Orders: ${m['month']}");
    }
  }
}
