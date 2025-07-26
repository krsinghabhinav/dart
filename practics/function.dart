import 'dart:io';

// void getName() {
//   print("abhinav singh");
//   print("Without Return type function");
// }

// void getNameWithReturn(String name, int age) {
//   print("Name: $name");
//   print("Age: $age");
//   print(" Return  function");
// }

// String getNameWithReturnType(String name, int age) {
//   print("Name: $name");
//   print("This function has a return type");
//   // Returning a string value
//   return "name: $name, age: $age";
// }

//take input from user

List<int> items = [10, 20, 30, 40, 5];
int total = 0;
void main() {
  // print("Enter your name:");
  // String? name = stdin.readLineSync();  // `?` means value null ho sakti hai
  // print("Namaste, $name!");

  for (var item in items) {
    total += item;
    print("Total so far: $total");

    if (total > 100) {
      print("discount 20 rupees ");
      total -= 20;
      print("Total after discount: $total");
    }
    print("Item: $item");
  }
}
