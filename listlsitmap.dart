void main() {
  List<List<Map<String, dynamic>>> studentsMarks = [
    [
      {"name": "Abhinav", "subject": "Math", "marks": 85},
      {"name": "Abhinav", "subject": "Science", "marks": 90},
    ],
    [
      {"name": "Karan", "subject": "Math", "marks": 75},
      {"name": "Karan", "subject": "Science", "marks": 80},
  ],
    [
      {"name": "Simran", "subject": "Math", "marks": 95},
      {"name": "Simran", "subject": "Science", "marks": 92},
    ],
  ];
  for (int i = 0; i < studentsMarks.length; i++) {
    print(studentsMarks[i]);
    for (int j = 0; j < studentsMarks[i].length; j++) {
      // print(studentsMarks[i][j]["marks"]);
    }
  }
}
