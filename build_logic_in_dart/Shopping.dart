import 'dart:io';

void main() {
  // Step 1: How many items?
  print("How many items do you want to add?");
  int n = int.parse(stdin.readLineSync()!);
  List<String> productList = [];
  List<int> priceList = [];

  for (int i = 1; i <= n; i++) {
    print("Enter product ${i + 1} name:");
    String name = stdin.readLineSync()!;
    productList.add(name);

    print("Enter price ${i + 1} name:");
    int price = int.parse(stdin.readLineSync()!);
    priceList.add(price);
  }

  int total = 0;
  for (var tot in priceList) {
    total = total + tot;
  }

  // Step 4: Output
  print("\nYour Shopping Cart:");
  for (int i = 1; i <= n; i++) {
    print("${productList[i]} - ₹${priceList[i]}");
  }
  print("Total Amount: ₹$total");
}
