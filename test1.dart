void main() {
  List<String> fruites = ["apple", "banana", "graphs", "gavava"];
  // print(fruites[0]);
  fruites.add("mango");
  // print(fruites);
  // for (var f in fruites) {
  //   print(f);
  // }

  // for (int i = 0; i < fruites.length; i++) {
  //   print(fruites[i]);
  // }

  // List<dynamic> mixed = ["apple", 100, "banan", 60];
  // // print(mixed);

  // mixed.forEach((f) => print(f));

  List<Map<String, dynamic>> listofmap = [
    {"name": "abhinav", "age": 22},

    {"name": "aksing", "age": 25},
  ];

  // print(listofmap[1]["name"]);

  for (int i = 0; i < listofmap.length; i++) {
    print(listofmap[i]["name"]);
    print(listofmap[i]["age"]);
  }

  List<int> addlsit = [23, 45, 6, 76, 87, 32, 56];
  int total = 0;

  for (int i = 0; i < addlsit.length; i++) {
    total += addlsit[i];
  }
  print("total===>${total}");
}
