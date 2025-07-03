void main() {
  List<Map<String, dynamic>> products = [
    {'id': 1, 'name': 'Shoes', 'category': 'Footwear'},
    {'id': 2, 'name': 'Shirt', 'category': 'Clothing'},
    {'id': 3, 'name': 'Socks', 'category': 'Footwear'},
    {'id': 4, 'name': 'Jeans', 'category': 'Clothing'},
    {'id': 5, 'name': 'Watch', 'category': 'Accessories'},
  ];

  Set<String> categ = {};
  for (var pro in products) {
    categ.add(pro["category"]); // Always add the category to the set
  }
  print(categ); // Prints unique categories
}