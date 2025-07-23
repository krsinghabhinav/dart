import 'dart:io';

void main() {
  // Step 1: Input initial balance
  print("Enter initial balance:");
  int balance = int.parse(stdin.readLineSync()!);

  while (true) {
    print("\nMenu:");
    print("1. Withdraw");
    print("2. Deposit");
    print("3. Check Balance");
    print("4. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter your choice:");
      int amount = int.parse(stdin.readLineSync()!);
      if (amount <= balance) {
        balance = balance - amount;
        print("Withdrawal successful. Remaining balance: $balance");
      }
    } else if (choice == 2) {
      print("Enter your choice:");
      int amount = int.parse(stdin.readLineSync()!);
      balance = balance + amount;
      print("Deposit successful. Current balance: $balance");
    } else if (choice == 3) {
      print("Deposit successful. Current balance: $balance");
    } else if (choice == 4) {
      print("thankus for exiting......");
      break;
    } else {
      print("Invalid choice. Try again.");
    }
  }
}
