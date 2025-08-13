void main() {
  Map<String, List<Map<String, dynamic>>> categoryProducts = {
    "Fruits": [
      {"name": "Apple", "price": 100},
      {"name": "Mango", "price": 80},
    ],
    "Vegetables": [
      {"name": "Carrot", "price": 40},
    ],
  };
  List<String> cat = categoryProducts.keys.toList();
  for (int i = 0; i < cat.length; i++) {
    // print(cat[i]);

    List<Map<String, dynamic>> items = categoryProducts[cat[i]]!;
    for (int j = 0; j < items.length; j++) {
      print(items[j]["name"]);
    }
  }
}
