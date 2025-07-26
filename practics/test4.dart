void main() {
  bool isTaxable = false;
  bool gst5 = false;
  bool gst12 = true;
  bool gst18 = false;
  String totalAmount = "1500";

  double amount = double.parse(totalAmount);
  double gstAmount = 0;

  if (isTaxable == false) {
    gstAmount = 0;
  } else {
    if (gst5) {
      gstAmount = amount * 0.05;
    } else if (gst12) {
      gstAmount = amount * 0.12;
    } else if (gst18) {
      gstAmount = amount * 0.18;
    }
  }

  print("Total Amount: $amount");
  print("GST Amount: ${gstAmount.toStringAsFixed(2)}");
  print("Total with GST: ${(amount + gstAmount).toStringAsFixed(2)}");
}
