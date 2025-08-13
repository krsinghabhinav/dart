void main() {
  Map<String, List<Map<String, dynamic>>> store = {
    'products': [
      {
        'id': 101,
        'name': 'Laptop',
        'price': 75000,
        'available': true,
        'tags': ['electronics', 'computer', 'portable'],
        'ratings': {'average': 4.5, 'count': 128},
      },
      {
        'id': 102,
        'name': 'Smartphone',
        'price': 40000,
        'available': false,
        'tags': ['electronics', 'mobile', 'touchscreen'],
        'ratings': {'average': 4.3, 'count': 210},
      },
      {
        'id': 103,
        'name': 'Headphones',
        'price': 3000,
        'available': true,
        'tags': ['accessory', 'audio'],
        'ratings': {'average': 4.0, 'count': 95},
      },
    ],
  };

  // Step 1: get the list of products
  List<Map<String, dynamic>> products = store['products']!;

  // Step 2: loop through each product
  for (int i = 0; i < products.length; i++) {
    var product = products[i];
    print('🔹 Product Name: ${product["name"]}');
    print('   💰 Price: ₹${product["price"]}');
    print('   ✅ Available: ${product["available"] ? "Yes" : "No"}');

    // Step 3: loop through tags
    List<String> tags = List<String>.from(product['tags']);
    print('   🏷️ Tags:');
    for (int j = 0; j < tags.length; j++) {
      print('     - ${tags[j]}');
    }

    // Step 4: access nested Map (ratings)
    Map<String, dynamic> ratings = product['ratings'];
    print('   ⭐ Average Rating: ${ratings["average"]}');
    print('   👤 Total Reviews: ${ratings["count"]}');
    print(''); // for space
  }
}
