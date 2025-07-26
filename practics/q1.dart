class Product {
  String name;
  double price;

  Product({required this.name, required this.price});
}

void main() {
  // Create a list of products
  List<Product> products = [
    Product(name: 'Laptop', price: 999.99),
    Product(name: 'Smartphone', price: 499.99),
    Product(name: 'Tablet', price: 299.99),
  ];

  // Add a new product to the list
  Product newProduct = Product(name: "Tablet", price: 35);

  bool isExits = false;
  for (var pro in products) {
    if (pro.name == newProduct.name) {
      print("Product already exists");
      isExits = true;
      break;
    }
  }
  // Print the details of each product
  for (var product in products) {
    print('Product Name: ${product.name}, Price: \$${product.price}');
  }

  if (isExits) {
    print(" Product already exists, not adding it again.");
  } else {
    products.add(newProduct);
    print(
      'New product added: ${newProduct.name}, Price: \$${newProduct.price}',
    );
  }
}
