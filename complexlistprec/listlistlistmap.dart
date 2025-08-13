void main() {
  List<Map<String, dynamic>> stores = [
    {
      "storeName": "Fashion Hub",
      "categories": [
        {
          "category": "Clothing",
          "orders": [
            {
              "orderId": 101,
              "customer": {"name": "Abhinav", "address": "Delhi"},
              "items": [
                {
                  "product": "T-Shirt",
                  "price": 500,
                  "qty": 2,
                  "discount": 10,
                  "tax": 5,
                  "shipping": {"method": "Standard", "cost": 50},
                },
                {
                  "product": "Jeans",
                  "price": 1200,
                  "qty": 1,
                  "discount": 0,
                  "tax": 5,
                  "shipping": {"method": "Express", "cost": 100},
                },
              ],
            },
          ],
        },
        {
          "category": "Accessories",
          "orders": [
            {
              "orderId": 102,
              "customer": {"name": "Karan", "address": "Mumbai"},
              "items": [
                {
                  "product": "Watch",
                  "price": 2500,
                  "qty": 1,
                  "discount": 20,
                  "tax": 12,
                  "shipping": {"method": "Express", "cost": 150},
                },
              ],
            },
          ],
        },
      ],
    },
    {
      "storeName": "Shoe Corner",
      "categories": [
        {
          "category": "Footwear",
          "orders": [
            {
              "orderId": 201,
              "customer": {"name": "Ravi", "address": "Lucknow"},
              "items": [
                {
                  "product": "Shoes",
                  "price": 2000,
                  "qty": 1,
                  "discount": 5,
                  "tax": 5,
                  "shipping": {"method": "Standard", "cost": 70},
                },
                {
                  "product": "Sneakers",
                  "price": 2500,
                  "qty": 1,
                  "discount": 0,
                  "tax": 5,
                  "shipping": {"method": "Standard", "cost": 70},
                },
              ],
            },
          ],
        },
      ],
    },
  ];
  int total = 0;
  for (int i = 0; i < stores.length; i++) {
    print(stores[i]["storeName"]);
    List categories = stores[i]["categories"];
    for (int j = 0; j < categories.length; j++) {
      print(categories[j]["category"]);
      List orders = categories[j]["orders"];
      for (int k = 0; k < orders.length; k++) {
        print(orders[k]["orderId"]);
        print(orders[k]["customer"]["name"]);
        print(orders[k]["customer"]["address"]);
        List items = orders[k]["items"];
        for (int l = 0; l < items.length; l++) {
          print(items[l]["product"]);
          print(items[l]["price"]);
          print(items[l]["shipping"]["method"]);
          if (items[l]["shipping"]["method"] == "Standard") {
            print("this methode is Standard");
          }

          total = (items[l]["price"] * items[l]["qty"]);
          num discountAmount = total * (items[l]["discount"] / 100);
          num textAmount = total * (items[l]["tax"] / 100);
          num grandTolal =
              total -
              discountAmount +
              textAmount +
              items[l]["shipping"]["cost"];

          print("final amount to paid ==>${grandTolal}");
          print("total amount ${total}");
          print("discountAmount amount ${discountAmount}");
          print("textAmount amount ${textAmount}");
        }
      }
    }
  }
}
