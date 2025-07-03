void main() {
  List<String> list = [
    'apple',
    'banana',
    'cherry',
    'date',
    'elderberry',
    'fig',
    'grape',
  ];

  // for (int i = 1; i < list.length; i++) {
  //   // print(list[i]);
  //   var fruit = list[i];
  //   if (fruit.contains("date")) {
  //     print('${fruit}');
  //   }
  // }

  // for (var f in list) {
  //   print(f);
  //   // if (f.contains("date")) {
  //   //   print('${f}');
  //   // }
  // }

  // list.forEach((f) => print(f));
  List<int> scores = [45, 67, 89, 100, 30];
  // list.map((f) => print(f));

  // for (var s in scores) {
  //   if (s > 60) {
  //     print(s);
  //   }
  // }

  // List<int> passed = scores.where((s) => s >= 60).toList();
  // print(passed);

  // scores.sort();
  // print(scores);

  // scores.sort((a, b) => a.compareTo(b)); // ascending order
  // print(scores);

  // scores.sort((a, b) => b.compareTo(a)); // descending order
  // print(scores);

  // List<int> number = [1, 2, 3, 4, 5];

  // List doublenumber = number.map((e) => e * 2).toList();

  // print(doublenumber);

  List<Map<String, dynamic>> students = [
    {"name": "Amit", "marks": 90},
    {"name": "Neha", "marks": 75},
    {"name": "Ravi", "marks": 40},
  ];

  // for (var num in students) {
  //   if (num["marks"] >= 50) {
  //     print(num["name"]);
  //   }
  // }

  // students.forEach((e) {
  //   if (e["marks"] >= 50) {
  //     print(e["name"]);// prints Amit and Neha
  //   }
  // });

  List<String> name = ["Amit", "Neha", "Ravi", "Neha", "Amit"];
  name.toSet();
  print(name.toSet().toList()); // prints {Amit, Neha, Ravi}
}
