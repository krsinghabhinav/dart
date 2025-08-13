void main() {
  Map<String, dynamic> product = {
    'id': 101,
    'name': 'Laptop',
    'price': 65000,
    'inStock': true,
    'tags': ['electronics', 'device'],
  };

  List<String> productList = product.keys.toList();
  for (int i = 0; i < productList.length; i++) {
    // print(productList[i]);

    List<String> tags = List<String>.from(product['tags']);
    for (int j = 0; j < tags.length; j++) {
      print(tags[j]);
    }
  }
}
