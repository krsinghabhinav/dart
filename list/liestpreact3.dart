void main() {
  List<Map<String, dynamic>> cartItems = [
    {"name": "Apple", "qty": 3},
    {"name": "Banana", "qty": 0},
    {"name": "Orange", "qty": 2},
  ];
  // List<Map<String, dynamic>> validCart = [];
  // for (int i = 0; i < cartItems.length; i++) {
  //   if (cartItems[i]["qty"] > 0) {
  //     validCart.add(cartItems[i]);
  //     print(cartItems[i]["name"] + " is in the cart");
  //   } else {
  //     print("No items in the cart");
  //   }
  // }

  // print(validCart);

  List<Map<String, dynamic>> cart = [
    {"item": "Shoes", "price": 2000, "qty": 2},
    {"item": "T-shirt", "price": 500, "qty": 3},
  ];

  // num total = 0;
  // for (var items in cart) {
  //   total += items["price"] * items["qty"];
  // }
  //   print(total);

  List<Map<String, dynamic>> coupons = [
    {"code": "NEW100", "valid": true},
    {"code": "OLD50", "valid": false},
  ];

  // To remove valid coupons from the list, collect them first and then remove them to avoid modifying the list during iteration
  List<Map<String, dynamic>> toRemove = [];

  for (var c in coupons) {
    if (c["valid"] == true) {
      toRemove.add(c);
    }
    print(toRemove);
  }

  for (var r in toRemove) {
    coupons.remove(r);
    print(coupons);
  }

  // for (var c in coupons) {
  //   if (c["valid"] == true) {
  //     toRemove.add(c);
  //   }
  // }
  // for (var c in toRemove) {
  //   coupons.remove(c);
  // }
}
