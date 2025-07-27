void main() {
  List<List<Map<String, dynamic>>> studentsMarks = [
    // Abhinav's terms
    [
      {
        "name": "",
        "term": "Term 1",
        "subject": "Math",
        "marks": 85,
        "grade": "A",
        "remarks": "Good"
      },
      {
        "name": "Abhinav",
        "term": "Term 1",
        "subject": "Science",
        "marks": 90,
        "grade": "A+",
        "remarks": "Excellent"
      },
      {
        "name": "Abhinav",
        "term": "Term 2",
        "subject": "Math",
        "marks": 78,
        "grade": "B+",
        "remarks": "Needs Improvement"
      },
      {
        "name": "Abhinav",
        "term": "Term 2",
        "subject": "Science",
        "marks": 88,
        "grade": "A",
        "remarks": "Improved"
      },
    ],

    // Karan's terms
    [
      {
        "name": "Karan",
        "term": "Term 1",
        "subject": "Math",
        "marks": 65,
        "grade": "C",
        "remarks": "Average"
      },
      {
        "name": "Karan",
        "term": "Term 1",
        "subject": "Science",
        "marks": 70,
        "grade": "B",
        "remarks": "Satisfactory"
      },
      {
        "name": "Karan",
        "term": "Term 2",
        "subject": "Math",
        "marks": 75,
        "grade": "B+",
        "remarks": "Better"
      },
      {
        "name": "Karan",
        "term": "Term 2",
        "subject": "Science",
        "marks": 82,
        "grade": "A",
        "remarks": "Well done"
      },
    ],

    // Simran's terms
    [
      {
        "name": "Simran",
        "term": "Term 1",
        "subject": "Math",
        "marks": 95,
        "grade": "A+",
        "remarks": "Outstanding"
      },
      {
        "name": "Simran",
        "term": "Term 1",
        "subject": "Science",
        "marks": 92,
        "grade": "A+",
        "remarks": "Excellent"
      },
      {
        "name": "Simran",
        "term": "Term 2",
        "subject": "Math",
        "marks": 96,
        "grade": "A+",
        "remarks": "Brilliant"
      },
      {
        "name": "Simran",
        "term": "Term 2",
        "subject": "Science",
        "marks": 94,
        "grade": "A+",
        "remarks": "Great"
      },
    ]
  ];

  // 🔁 Iterate and print nicely
  for (var studentData in studentsMarks) {
    if (studentData.isNotEmpty) {
      String studentName = studentData[0]["name"];
      print("\n👨‍🎓 Student: $studentName");

      for (var record in studentData) {
        print("  📘 ${record['term']} - ${record['subject']}: "
            "${record['marks']} marks, Grade: ${record['grade']}, Remarks: ${record['remarks']}");
      }
    }
  }
}
