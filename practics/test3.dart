void main() {
  int advancePayment = 0;
  String? selectedPaymentMode = "upi";
  int easebuzzPayment = 1;
  String amountToBePaid = "";

  Map<String, String> namemap = {
    // Determine mode of payment
    "mode_of_payment":
        advancePayment == 0
            ? (selectedPaymentMode == null ? "offline" : selectedPaymentMode)
            : (easebuzzPayment == 1 ? "online" : "offline"),

    // Determine paid amount
    "paid_of_amount":
        advancePayment == 0
            ? (amountToBePaid.isEmpty ? "0" : amountToBePaid)
            : "0",

    // Determine amount status
    "amount_status":
        amountToBePaid.isEmpty ? "pending" : "paid",
  };

  // Output the results
  print("Mode of Payment: ${namemap["mode_of_payment"]}");
  print("Paid Amount: ${namemap["paid_of_amount"]}");
  print("Amount Status: ${namemap["amount_status"]}");
}
