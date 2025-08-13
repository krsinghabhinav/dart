void main() {
  Map<String, List<Map<String, dynamic>>> data = {  
    'products': [
      {
        'id': 1,
        'name': 'Laptop',
        'price': 75000,
        'tags': ['electronics', 'computer', 'portable'],
      },
      {
        'id': 2,
        'name': 'Smartphone',
        'price': 40000,
        'tags': ['electronics', 'mobile', 'touchscreen'],
      },
      {
        'id': 3,
        'name': 'Headphones',
        'price': 3000,
        'tags': ['accessory', 'audio'],
      },
    ],
  };

  List<Map<String, dynamic>> product = data["products"]!;
  for (int i = 0; i < product.length; i++) {
    print(product[i]["name"]);

    var pro = product[i];
    List<String> tags = List<String>.from(product[i]["tags"]);
    for (int j = 0; j < tags.length; j++) {
      print(tags[j]);
    }
  }
}
