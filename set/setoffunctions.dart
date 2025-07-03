void main() {
  Set<String> items = {"apple"};

  items.add("bananas");
  print(items);

  Set<int> productIdsInCart = {};

  void addToCart(int productId) {
    if (!productIdsInCart.contains(productId)) {
      productIdsInCart.add(productId);
      print("✅ Product Added: $productId");
    } else {
      print("⚠️ Already in Cart");
    }
  }

  addToCart(1001);
  addToCart(1001); // Won’t add again
  addToCart(1002);

  List<Map<String, dynamic>> orders = [
    {'userId': 1, 'name': 'Abhinav'},
    {'userId': 2, 'name': 'Ravi'},
    {'userId': 1, 'name': 'Abhinav'},
  ];

  Set<int> seen = {};
  Set<int> repeat = {};

  for (var order in orders) {
    int id = order['userId'];
    if (seen.contains(id)) {
      repeat.add(id);
    } else {
      seen.add(id);
    }
  }

  print("Users with repeat orders: $repeat");
}
