import 'dart:isolate';

void main() {
  num totalAmount = 0;
  num discountAmount = 0;
  List<Map<String, dynamic>> complexData = [
    {
      "category": "Clothing",
      "categoryId": 1,
      "available": true,
      "orders": [
        {
          "orderId": 101,
          "orderDate": "2025-07-20",
          "status": "Delivered",
          "color": ["red", "yellow", "green"],
          "shipping": {
            "method": "Express",
            "address": {
              "line1": "123 Fashion St",
              "city": "Mumbai",
              "pin": 400001
            },
            "tracking": {
              "id": "TRK123456",
              "status": "Delivered",
              "deliveredOn": "2025-07-25"
            }
          },
          "items": [
            {
              "product": "T-Shirt",
              "price": 500,
              "qty": 2,
              "brand": "Nike",
              "discount": {"type": "flat", "amount": 50},
              "reviews": [
                {"user": "Ajay", "rating": 4, "comment": "Nice product"},
                {"user": "Meena", "rating": 5}
              ]
            },
            {
              "product": "Jeans",
              "price": 1200,
              "qty": 1,
              "brand": "Levi's",
              "discount": {"type": "percent", "amount": 10},
              "reviews": []
            }
          ]
        }
      ]
    },
    {
      "category": "Electronics",
      "categoryId": 2,
      "available": false,
      "orders": [
        {
          "orderId": 202,
          "orderDate": "2025-07-22",
          "status": "Shipped",
          "color": ["black", "silver"],
          "shipping": {
            "method": "Standard",
            "address": {
              "line1": "Tech Park, Block A",
              "city": "Bangalore",
              "pin": 560001
            },
            "tracking": {
              "id": "TRK987654",
              "status": "In Transit",
              "deliveredOn": null
            }
          },
          "items": [
            {
              "product": "Smartphone",
              "price": 25000,
              "qty": 1,
              "brand": "Samsung",
              "warrantyYears": 1,
              "accessories": [
                {"name": "Charger", "included": true},
                {"name": "Earphones", "included": false}
              ],
              "reviews": [
                {"user": "Karan", "rating": 3, "comment": "Average battery"},
                {"user": "Ravi", "rating": 4}
              ]
            }
          ]
        }
      ]
    },
    {
      "category": "Grocery",
      "categoryId": 3,
      "available": true,
      "orders": [
        {
          "orderId": 303,
          "orderDate": "2025-07-25",
          "status": "Processing",
          "color": [],
          "shipping": {
            "method": "Next Day",
            "address": {
              "line1": "22 Local Market",
              "city": "Delhi",
              "pin": 110001
            },
            "tracking": {
              "id": "TRK654321",
              "status": "Pending",
              "deliveredOn": null
            }
          },
          "items": [
            {
              "product": "Rice",
              "price": 60,
              "qty": 10,
              "brand": "India Gate",
              "type": "Basmati",
              "discount": null,
              "reviews": []
            },
            {
              "product": "Salt",
              "price": 20,
              "qty": 2,
              "brand": "Tata",
              "discount": {"type": "flat", "amount": 5},
              "reviews": [
                {"user": "Neha", "rating": 5}
              ]
            }
          ]
        }
      ]
    }
  ];
  for (int i = 0; i < complexData.length; i++) {
    print(complexData[i]["category"]);
    print(complexData[i]["categoryId"]);
    if (complexData[i]["available"] == false) {
      print(("Product is not available "));
    } else {
      print(("Product is available "));
    }

    List<Map<String, dynamic>> ordersList = complexData[i]["orders"];
    for (int j = 0; j < ordersList.length; j++) {
      print(ordersList[j]["orderId"]);
      print(ordersList[j]["orderDate"]);
      List<dynamic>? colors = ordersList[j]["colors"];

      if (colors == null || colors.isEmpty) {
        print("Color not available");
      } else {
        for (int n = 0; n < colors.length; n++) {
          print(colors[n] ?? "Color not available");
        }
      }

      if (ordersList[j]["status"] == "Delivered") {
        print(
            "order delivered => Mehode: ${ordersList[j]["shipping"]["method"]}==>Address=>${ordersList[j]["shipping"]["address"]["line1"]} City==>${ordersList[j]["shipping"]["address"]["city"]} pinecode==>${ordersList[j]["shipping"]["address"]["pin"]} ");
        if (ordersList[j]["shipping"]["tracking"]["status"] == "Delivered") {
          print(
              "Tracking id==>${ordersList[j]["shipping"]["tracking"]["id"]} Delivery Date =>${ordersList[j]["shipping"]["tracking"]["deliveredOn"]} ");
        }
      } else if (ordersList[j]["status"] == "Shipped") {
        print(
            "order Ship => Mehode: ${ordersList[j]["shipping"]["method"]}==>Address=>${ordersList[j]["shipping"]["address"]["line1"]} City==>${ordersList[j]["shipping"]["address"]["city"]} pinecode==>${ordersList[j]["shipping"]["address"]["pin"]} ");
        if (ordersList[j]["shipping"]["tracking"]["status"] == "In Transit") {
          print(
              "Tracking id==>${ordersList[j]["shipping"]["tracking"]["id"]} Delivery Date =>${ordersList[j]["shipping"]["tracking"]["deliveredOn"]} ");
        }
      } else if (ordersList[j]["status"] == "Processing") {
        print(
            "order Processing => Mehode: ${ordersList[j]["shipping"]["method"]}==>Address=>${ordersList[j]["shipping"]["address"]["line1"]} City==>${ordersList[j]["shipping"]["address"]["city"]} pinecode==>${ordersList[j]["shipping"]["address"]["pin"]} ");
        if (ordersList[j]["shipping"]["tracking"]["status"] == "Pending") {
          print(
              "Tracking id==>${ordersList[j]["shipping"]["tracking"]["id"]} Delivery Date =>${ordersList[j]["shipping"]["tracking"]["deliveredOn"]} ");
        }
      } else {
        print(
            "order is not statred that why it didn't show any status of you product ");
      }

      List<Map<String, dynamic>> items = ordersList[j]["items"];
      for (int k = 0; k < items.length; k++) {
        print(items[k]["product"]);
        print(items[k]["price"]);
        print(items[k]["qty"]);
        print(items[k]["brand"]);

        totalAmount += items[k]["price"] * items[k]["qty"];
        if (items[k]["discount"] != null) {
          if (items[k]["discount"]["type"] == "flat") {
            print("flat discount==>${items[k]["discount"]["amount"]}");
            discountAmount =
                double.tryParse(items[k]["discount"]["amount"].toString()) ?? 0;
            print("flat discount==>${discountAmount}");
          } else {
            print("Discount==>${items[k]["discount"]["amount"]}%");
            discountAmount = (items[k]["price"] *
                    items[k]["qty"] *
                    items[k]["discount"]["amount"]) /
                100;
            print(" discount==>${discountAmount}");
          }
        } else {
          print("No discount available");
        }
        num finalAmountToBepay = totalAmount - discountAmount;
        print("total Amount==>${totalAmount}");
        print("final  Amount to pay ==>${finalAmountToBepay}");

        if (items[k]["reviews"] == null || items[k]["reviews"].isEmpty) {
          print("No reviews available");
        } else {
          List<Map<String, dynamic>> reviews = items[k]["reviews"];
          for (int m = 0; m < reviews.length; m++) {
            print(
                "Review by ${reviews[m]["user"]}: Rating ${reviews[m]["rating"]} => Comment: ${reviews[m]["comment"] ?? "No comment"}");
          }
        }
      }
    }
  }
}
