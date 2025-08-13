void main() {
  String accounttype = "Wallet";
  List<Map<String, dynamic>> expenseData = [
    {
      "user": {
        "userId": 201,
        "name": "Divya Sharma",
        "email": "divya.sharma@company.com",
        "role": "Finance Head"
      },
      "accounts": [
        {
          "accountId": 101,
          "type": "Bank",
          "name": "Axis Bank",
          "balance": 150000.00,
          "currency": "INR"
        },
        {
          "accountId": 102,
          "type": "Wallet",
          "name": "Paytm",
          "balance": 1000.00,
          "currency": "INR"
        },
        {
          "accountId": 103,
          "type": "Credit Card",
          "name": "HDFC Credit Card",
          "balance": -25000.00,
          "currency": "INR"
        }
      ],
      "expenses": [
        {
          "expenseId": 3001,
          "date": "2025-07-10",
          "category": "Travel",
          "subCategory": "Flight",
          "amount": 8200.00,
          "currency": "INR",
          "paymentMethod": "HDFC Credit Card",
          "isReimbursable": true,
          "taxDeductible": true,
          "receipt": {
            "fileName": "flight_ticket.pdf",
            "fileUrl": "https://files.company.com/bills/flight_ticket.pdf"
          },
          "project": {"projectId": 801, "name": "Overseas Client Onboarding"},
          "status": "Approved",
          "approval": {
            "approver": "Amit Roy",
            "approvedOn": "2025-07-12T09:00:00",
            "status": "Approved"
          }
        },
        {
          "expenseId": 3002,
          "date": "2025-07-15",
          "category": "Software",
          "subCategory": "Cloud Hosting",
          "amount": 1350.00,
          "currency": "INR",
          "paymentMethod": "Axis Bank",
          "isReimbursable": false,
          "taxDeductible": true,
          "receipt": null,
          "project": {"projectId": 802, "name": "Internal Infrastructure"},
          "status": "Recorded",
          "recurring": {"interval": "Monthly", "nextDue": "2025-08-15"},
          "approval": null
        },
        {
          "expenseId": 3003,
          "date": "2025-07-18",
          "category": "Meals",
          "subCategory": "Team Dinner",
          "amount": 2400.00,
          "currency": "INR",
          "paymentMethod": "Paytm",
          "isReimbursable": true,
          "taxDeductible": false,
          "receipt": {
            "fileName": "dinner_receipt.jpg",
            "fileUrl": "https://files.company.com/bills/dinner_receipt.jpg"
          },
          "project": {"projectId": 801, "name": "Overseas Client Onboarding"},
          "status": "Submitted",
          "approval": {
            "approver": "Amit Roy",
            "approvedOn": null,
            "status": "Pending"
          }
        },
        {
          "expenseId": 3004,
          "date": "2025-07-21",
          "category": "Training",
          "subCategory": "Online Course",
          "amount": 1200.00,
          "currency": "INR",
          "paymentMethod": "Axis Bank",
          "isReimbursable": true,
          "taxDeductible": true,
          "receipt": {
            "fileName": "course_invoice.pdf",
            "fileUrl": "https://files.company.com/bills/course_invoice.pdf"
          },
          "project": null,
          "status": "Rejected",
          "approval": {
            "approver": "Amit Roy",
            "approvedOn": "2025-07-22T11:30:00",
            "status": "Rejected",
            "reason": "Non-business purpose"
          }
        }
      ],
      "totals": {
        "monthlyTotal": 13150.00,
        "pendingReimbursements": 2400.00,
        "approvedReimbursements": 8200.00
      }
    },
    {
      "user": {
        "userId": 202,
        "name": "Nikhil Agarwal",
        "email": "nikhil.agarwal@company.com",
        "role": "Developer"
      },
      "accounts": [
        {
          "accountId": 104,
          "type": "Bank",
          "name": "SBI",
          "balance": 32300.00,
          "currency": "INR"
        }
      ],
      "expenses": [
        {
          "expenseId": 3010,
          "date": "2025-07-11",
          "category": "Hardware",
          "subCategory": "Laptop Charger",
          "amount": 1850.00,
          "currency": "INR",
          "paymentMethod": "SBI",
          "isReimbursable": true,
          "taxDeductible": false,
          "receipt": {
            "fileName": "charger_invoice.jpg",
            "fileUrl": "https://files.company.com/bills/charger_invoice.jpg"
          },
          "project": null,
          "status": "Pending",
          "approval": {
            "approver": "Divya Sharma",
            "approvedOn": null,
            "status": "Pending"
          }
        },
        {
          "expenseId": 3011,
          "date": "2025-07-05",
          "category": "Internet",
          "subCategory": "Home Plan",
          "amount": 799.00,
          "currency": "INR",
          "paymentMethod": "Auto-Debit (SBI)",
          "isReimbursable": false,
          "taxDeductible": true,
          "receipt": null,
          "status": "Recorded",
          "recurring": {"interval": "Monthly", "nextDue": "2025-08-05"},
          "approval": null
        }
      ],
      "totals": {
        "monthlyTotal": 2649.00,
        "pendingReimbursements": 1850.00,
        "approvedReimbursements": 0.00
      }
    }
  ];

  for (int i = 0; i < expenseData.length; i++) {
    print("=============user============");
    print(expenseData[i]["user"]["userId"]);
    print(expenseData[i]["user"]["name"]);
    print(expenseData[i]["user"]["email"]);
    print(expenseData[i]["user"]["role"]);
    print("=============account============");
    List<Map<String, dynamic>> account = expenseData[i]["accounts"];

    for (int j = 0; j < account.length; j++) {
      print(account[j]["accountId"]);
      if (account[j]["type"] == null) {
        print("there is no bank type");
      } else {
        if (account[j]["type"] == accounttype) {
          print(
              "Bank Name=> ${account[j]["name"]}, Balance=> ${account[j]["balance"]},Currency=>${account[j]["currency"]} ");
        }
      }
    }

    List<Map<String, dynamic>> expenses = expenseData[i]["expenses"];
    for (int k = 0; k < expenses.length; k++) {
      print(expenses[k]["expenseId"]);
    }
  }
}
