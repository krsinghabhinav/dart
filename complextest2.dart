void main() {
  List<Map<String, dynamic>> expenseData = [
    {
      "userId": 1001,
      "userName": "Amit Tiwari",
      "email": "amit@example.com",
      "profile": {
        "createdAt": "2023-06-15T10:00:00Z",
        "currency": "INR",
        "language": "en",
        "timezone": "Asia/Kolkata",
      },
      "wallets": [
        {
          "walletId": 501,
          "walletName": "Personal",
          "walletType": "Cash",
          "balance": 12350.75,
          "currency": "INR",
          "transactions": [
            {
              "txnId": "TXN102301",
              "type": "Expense",
              "amount": 1200,
              "currency": "INR",
              "date": "2025-07-28T09:30:00",
              "category": {
                "id": 1,
                "name": "Food & Drinks",
                "icon": "🍔",
                "subCategory": {"id": 11, "name": "Dining Out"},
              },
              "paymentMode": "Cash",
              "tags": ["restaurant", "weekend", "friends"],
              "note": "Dinner at BBQ Nation",
              "location": "Mumbai",
              "attachments": [
                {
                  "fileName": "bbq_bill.jpg",
                  "fileUrl": "https://example.com/files/bbq_bill.jpg",
                  "uploadedAt": "2025-07-28T09:45:00",
                },
              ],
            },
            {
              "txnId": "TXN102302",
              "type": "Income",
              "amount": 25000,
              "currency": "INR",
              "date": "2025-07-25T17:00:00",
              "category": {"id": 99, "name": "Salary", "icon": "💼"},
              "paymentMode": "Bank Transfer",
              "tags": ["monthly", "job"],
              "note": "Salary credited from Infosys",
            },
          ],
        },
        {
          "walletId": 502,
          "walletName": "Business",
          "walletType": "Bank",
          "balance": 109230.55,
          "currency": "INR",
          "transactions": [
            {
              "txnId": "TXN202101",
              "type": "Expense",
              "amount": 5400,
              "currency": "INR",
              "date": "2025-07-27T14:15:00",
              "category": {
                "id": 3,
                "name": "Office Supplies",
                "icon": "📦",
                "subCategory": {"id": 33, "name": "Printing & Stationery"},
              },
              "paymentMode": "Credit Card",
              "tags": ["stationery", "office"],
              "note": "Printed 200 brochures",
              "location": "Delhi",
              "attachments": [],
            },
            {
              "txnId": "TXN202102",
              "type": "Recurring Expense",
              "amount": 999,
              "currency": "INR",
              "date": "2025-07-01T00:00:00",
              "category": {
                "id": 5,
                "name": "Subscriptions",
                "icon": "📺",
                "subCategory": {"id": 51, "name": "SaaS Tools"},
              },
              "recurring": {
                "interval": "Monthly",
                "nextDue": "2025-08-01",
                "autoDeduct": true,
              },
              "paymentMode": "UPI",
              "tags": ["software", "tools"],
              "note": "Canva Pro subscription",
            },
          ],
        },
      ],
      "budgets": [
        {
          "month": "2025-07",
          "totalBudget": 30000,
          "categories": [
            {
              "categoryId": 1,
              "categoryName": "Food & Drinks",
              "allocated": 6000,
              "spent": 5800,
            },
            {
              "categoryId": 3,
              "categoryName": "Office Supplies",
              "allocated": 10000,
              "spent": 5400,
            },
          ],
        },
      ],
      "analytics": {
        "monthlySummary": {
          "totalIncome": 25000,
          "totalExpense": 12199,
          "savings": 12801,
          "topCategories": [
            {"name": "Food & Drinks", "amount": 5800},
            {"name": "Office Supplies", "amount": 5400},
          ],
        },
        "recentTrends": [
          {"month": "2025-05", "income": 22000, "expense": 16000},
          {"month": "2025-06", "income": 24000, "expense": 14500},
          {"month": "2025-07", "income": 25000, "expense": 12199},
        ],
      },
      "reminders": [
        {
          "id": "RMD01",
          "title": "Pay Internet Bill",
          "dueDate": "2025-08-01",
          "amount": 999,
          "recurring": true,
        },
        {
          "id": "RMD02",
          "title": "EMI: Bike Loan",
          "dueDate": "2025-08-05",
          "amount": 2400,
          "recurring": true,
        },
      ],
    },
  ];

  for (int i = 0; i < expenseData.length; i++) {
    print(expenseData[i]["userId"]);
    print(expenseData[i]["userName"]);
    print(expenseData[i]["email"]);
    print("=========User Profile Data======");
    print(expenseData[i]["profile"]["createdAt"]);
    print(expenseData[i]["profile"]["currency"]);
    print(expenseData[i]["profile"]["language"]);
    print(expenseData[i]["profile"]["timezone"]);
    print("========= wallets  ======");
    List<Map<String, dynamic>> walletsList = expenseData[i]["wallets"];
    for (int j = 0; j < walletsList.length; j++) {
      print(walletsList[j]["walletId"]);
      if (walletsList[j]["walletName"] == "Personal") {
        print("WalletName=>${walletsList[j]["walletName"]}");
        if (walletsList[j]["walletType"] == "Cash") {
          print(
            "Balance=:${walletsList[j]["balance"]}, Currency=> ${walletsList[j]["currency"]}",
          );
        }
      } else {
        if (walletsList[j]["walletName"] == "Business") {
          print("WalletName=>${walletsList[j]["walletName"]}");
          if (walletsList[j]["walletType"] == "Bank") {
            print(
              "Balance=:${walletsList[j]["balance"]}, Currency=> ${walletsList[j]["currency"]}",
            );
          }
        }
      }
      List<Map<String, dynamic>> transactions = walletsList[j]["transactions"];
      for (int k = 0; k < transactions.length; k++) {
        print(transactions[k]["txnId"]);
        if (transactions[k]["type"] == "Expense") {
          print(
            "Amount=:${transactions[k]["amount"]}, Currency=> ${transactions[k]["currency"]}, Date=>${transactions[k]["date"]} ",
          );
          print(
            "Category id=>${transactions[k]["category"]["id"]}, Name=>${transactions[k]["category"]["name"]}, icons=>${transactions[k]["category"]["icon"]}",
          );

          if (transactions[k]["category"]["subCategory"] == null) {
            print("not avaibale");
          } else {
            print(
              "SubCategory id=>${transactions[k]["category"]["subCategory"]["id"]}, Name=>${transactions[k]["category"]["subCategory"]["name"]}",
            );
          }
        } else if (transactions[k]["type"] == "Income") {
          print(
            "Amount=:${transactions[k]["amount"]}, Currency=> ${transactions[k]["currency"]}, Date=>${transactions[k]["date"]} ",
          );
          print(
            "Category id=>${transactions[k]["category"]["id"]}, Name=>${transactions[k]["category"]["name"]}, icons=>${transactions[k]["category"]["icon"]}",
          );
          if (transactions[k]["category"]["subCategory"] == null) {
            print("not avaibale");
          } else {
            print(
              "SubCategory id=>${transactions[k]["category"]["subCategory"]["id"]}, Name=>${transactions[k]["category"]["subCategory"]["name"]}",
            );
          }
        } else if (transactions[k]["type"] == "Recurring Expense") {
          print(
            "Amount=:${transactions[k]["amount"]}, Currency=> ${transactions[k]["currency"]}, Date=>${transactions[k]["date"]} ",
          );
          print(
            "Category id=>${transactions[k]["category"]["id"]}, Name=>${transactions[k]["category"]["name"]}, icons=>${transactions[k]["category"]["icon"]}",
          );
          if (transactions[k]["category"]["subCategory"] == null) {
            print("not avaibale");
          } else {
            print(
              "SubCategory id=>${transactions[k]["category"]["subCategory"]["id"]}, Name=>${transactions[k]["category"]["subCategory"]["name"]}",
            );
          }
        } else {
          print(" there is no types");
        }

        print(
          "paymentMode=:${transactions[k]["paymentMode"]}, Note=> ${transactions[k]["note"]}, location=>${transactions[k]["location"] ?? "not loacation "} ",
        );
        print("tages==>${transactions[k]["tags"]}");
        List<dynamic>? attachments = transactions[k]["attachments"];

        if (attachments == null || attachments.isEmpty) {
          print("There is no attachment document");
        } else {
          for (int n = 0; n < attachments.length; n++) {
            print("attachments => ${attachments[n]["fileName"] ?? "no"}");
            print("fileUrl     => ${attachments[n]["fileUrl"] ?? "no"}");
            print("uploadedAt  => ${attachments[n]["uploadedAt"] ?? "no"}");
          }
        }
      }
    }

    List<Map<String, dynamic>> budgetsList = expenseData[i]["budgets"];
    for (int m = 0; m < budgetsList.length; m++) {
      print("Month=>${budgetsList[m]["month"]}");
      print("totalBudget=>${budgetsList[m]["totalBudget"]}");
      List<Map<String, dynamic>> categories = budgetsList[m]["categories"];
      for (int l = 0; l < categories.length; l++) {
        print(
          "categoryId=>${categories[l]["categoryId"]},categoryName=> ${categories[l]["categoryName"]}, allocated==> ${categories[l]["allocated"]}, spent==>${categories[l]["spent"]} ",
        );
      }
    }

    print(
      "totalIncome=>${expenseData[i]["analytics"]["monthlySummary"]["totalIncome"]}",
    );
    print(
      "totalExpense=>${expenseData[i]["analytics"]["monthlySummary"]["totalExpense"]}",
    );
    print(
      "savings=>${expenseData[i]["analytics"]["monthlySummary"]["savings"]}",
    );
    List<Map<String, dynamic>> topCategories =
        expenseData[i]["analytics"]["monthlySummary"]["topCategories"];
    for (int t = 0; t < topCategories.length; t++) {
      print(
        "topCategories Name=>${topCategories[t]["name"]}  Amount=>${topCategories[t]["amount"]}",
      );
    }

    List<Map<String, dynamic>> recentTrends =
        expenseData[i]["analytics"]["recentTrends"];
    for (int y = 0; y < recentTrends.length; y++) {
      print(
        "recentTrends==>${recentTrends[y]["month"]}, income=>${recentTrends[y]["income"]}, expense=> ${recentTrends[y]["expense"]} ",
      );
    }
    List<Map<String, dynamic>> reminders = expenseData[i]["reminders"];
    for (int z = 0; z < reminders.length; z++) {
      print(
        "id==>${reminders[z]["id"]}, title=>${reminders[z]["title"]}, dueDate=> ${reminders[z]["dueDate"]}, dueDate=> ${reminders[z]["amount"]}, dueDate=> ${reminders[z]["recurring"]}",
      );
    }
  }
}
