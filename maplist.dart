void main() {
  Map<String, List<Map<String, dynamic>>> store = {
    "Clothing": [
      {"name": "T-Shirt", "price": 20},
      {"name": "Jeans", "price": 50},
    ],
    "Footwear": [
      {"name": "Sneakers", "price": 70},
      {"name": "Slippers", "price": 15},
    ],
  };

  List<String> categories = store.keys.toList();

  for (int i = 0; i < categories.length; i++) {
    String cate = categories[i];
    print(cate);
    List<Map<String, dynamic>> product = store[cate]!;
    for (int j = 0; j < product.length; j++) {
      print(product[j]["name"]);
    }
  }
}
