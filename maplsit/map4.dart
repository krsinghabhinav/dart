void main() {
  Map<String, List<Map<String, dynamic>>> example = {
    'products': [
      {'id': 1, 'name': 'Laptop'},
      {'id': 2, 'name': 'Phone'},
    ],
  };
  List<Map<String, dynamic>> productList = example['products']!;
  for (int i = 0; i < productList.length; i++) {
    print(productList[i]['name']);
  }
}
  