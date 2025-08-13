void main() {
  List<Map<String, dynamic>> categories = [
    {
      "category": "Clothing",
      "orders": [
        {
          "orderId": 101,
          "items": [
            {"product": "T-Shirt", "price": 500, "qty": 2},
            {"product": "Jeans", "price": 1200, "qty": 1},
          ],
        },
        {
          "orderId": 102,
          "items": [
            {"product": "Jacket", "price": 3000, "qty": 1},
            {"product": "Socks", "price": 100, "qty": 5},
          ],
        },
      ],
    },
    {
      "category": "Footwear",
      "orders": [
        {
          "orderId": 201,
          "items": [
            {"product": "Shoes", "price": 2000, "qty": 1},
            {"product": "Slippers", "price": 500, "qty": 2},
          ],
        },
        {
          "orderId": 202,
          "items": [
            {"product": "Sneakers", "price": 2500, "qty": 1},
            {"product": "Shoe Polish", "price": 150, "qty": 1},
          ],
        },
      ],
    },
  ];
  int total = 0;
  for (int i = 0; i < categories.length; i++) {
    // print(categories[i]["category"]);
    List order = categories[i]["orders"];
    for (int j = 0; j < order.length; j++) {
      print(order[j]["orderId"]);

      List items = order[j]["items"];

      for (int k = 0; k < items.length; k++) {
        print(items[k]["product"]);
        total += items[k]["price"] as int;
      }
    }
  }
  print("total ===> ${total}");

  
}
