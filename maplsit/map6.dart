void main() {
  Map<String, List<Map<String, dynamic>>> data = {
    'products': [
      {
        'id': 1,
        'name': 'Laptop',
        'price': 65000,
        'details': {
          'brand': 'Dell',
          'warrantyYears': 2,
          'specs': ['i7', '16GB RAM', '512GB SSD'],
        },
        'tags': ['electronics', 'computing'],
        'reviews': [
          {'user': 'Alice', 'rating': 4.5, 'comment': 'Great laptop!'},
          {'user': 'Bob', 'rating': 4.0, 'comment': 'Worth the price.'},
        ],
      },
      {
        'id': 2,
        'name': 'Smartphone',
        'price': 30000,
        'details': {
          'brand': 'Samsung',
          'warrantyYears': 1,
          'specs': ['Snapdragon', '8GB RAM', '128GB Storage'],
        },
        'tags': ['electronics', 'mobile'],
          'reviews': [
            {'user': 'Charlie', 'rating': 4.2, 'comment': 'Very smooth!'},
            {'user': 'Daisy', 'rating': 3.9, 'comment': 'Battery life is okay.'},
        ],
      },
    ],
  };

  List<Map<String, dynamic>> productData = data["products"]!;
  for (int i = 0; i < productData.length; i++) {
    print(productData[i]);
    // print(productData[i]["details"]["brand"]);
    Map<String, dynamic> details = productData[i]['details'];
    // print(details["brand"]);

    List<String> specs = details["specs"];

    for (int j = 0; j < specs.length; j++) {
      // print(specs[j]);
    }
    List<String> tags = productData[i]["tags"];
    for (int j = 0; j < tags.length; j++) {
      // print(tags[j]);
    }
    List<Map<String, dynamic>> reviews = productData[i]["reviews"]!;
    for (int k = 0; k < reviews.length; k++) {
      // print(reviews[k]["user"]);
      // print(reviews[k]["rating"]);
    }
  }
}
