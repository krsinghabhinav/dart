import 'dart:io';

void main() {
  print("How many products do you want to add?");
  int n = int.parse(stdin.readLineSync()!);

  double grandTotal = 0;

  for (int i = 1; i <= n; i++) {
    print("\nEnter name for Product $i:");
    String productName = stdin.readLineSync()!;

    print("Enter price per unit for $productName:");
    int unitPrice = int.parse(stdin.readLineSync()!);

    print("Enter quantity for $productName:");
    int quantity = int.parse(stdin.readLineSync()!);

    int totalPrice = unitPrice * quantity;
    double discount = 0;

    // Apply discount
    if (totalPrice >= 5000) {
      discount = totalPrice * 0.15;
    } else if (totalPrice >= 2000) {
      discount = totalPrice * 0.10;
    } else if (totalPrice >= 500) {
      discount = totalPrice * 0.05;
    }

    double discountedAmount = totalPrice - discount;
    double gst = discountedAmount * 0.18;
    double finalAmount = discountedAmount + gst;

    grandTotal += finalAmount;

    print("Product: $productName");
    print("Total Price: ₹$totalPrice");
    print("Discount: ₹${discount.toStringAsFixed(2)}");
    print("Price After Discount: ₹${discountedAmount.toStringAsFixed(2)}");
    print("GST (18%): ₹${gst.toStringAsFixed(2)}");
    print("Final Payable: ₹${finalAmount.toStringAsFixed(2)}");
  }

  print("\n🛒 Grand Total Payable for All Products: ₹${grandTotal.toStringAsFixed(2)}");
}
