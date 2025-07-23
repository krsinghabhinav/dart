import 'dart:io';

void main() {
  print("How many items do you want to add?");
  int n = int.parse(stdin.readLineSync()!);
  List<int> marksList = [];
  List<String> subList = [];
  int totalmarks = 0;
  for (int i = 1; i <= n; i++) {
    print("enter your subject name");
    String subject = stdin.readLineSync()!;
    subList.add(subject);

    print("howmany number get int this subject");
    int marks = int.parse(stdin.readLineSync()!);

    marksList.add(marks);

    totalmarks = totalmarks + marks;
  }

  int lenghofsubkect = subList.length;

  double percentage = totalmarks / lenghofsubkect;

  String grade;
  if (percentage >= 90) {
    grade = 'A+';
  } else if (percentage >= 80) {
    grade = 'A';
  } else if (percentage >= 70) {
    grade = 'B';
  } else if (percentage >= 60) {
    grade = 'C';
  } else if (percentage >= 50) {
    grade = 'D';
  } else {
    grade = 'Fail';
  }

  // Step 4: Output
  print("\nTotal Marks: $totalmarks");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");
  print("Grade: $grade");
}
