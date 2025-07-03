void main() {
  List<String> input = ["10", "20", "30", "5"];
  int total = 0;

  for (var t in input) {
    total += int.parse(t);
  }
  // print(total);

  List<String> inputbool = ["true", "false", "true"];
  int countbooltrue = 0;

  for (var inpu in inputbool) {
    if (inpu == "true") {
      countbooltrue++;
    }
  }
  // print(countbooltrue);

  List<int> studentMarks = [32, 45, 67, 22, 90, 39];
  int totalpass = 0;
  int totalfail = 0;

  for (var m in studentMarks) {
    if (m >= 40) {
      totalpass++;
    } else {
      totalfail++;
    }
  }

  print("Total Pass: $totalpass");
  print("Total Fail: $totalfail");
}
