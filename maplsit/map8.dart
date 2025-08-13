void main() {
  Map<String, List<Map<String, dynamic>>> company = {
    'departments': [
      {
        'name': 'Engineering',
        'teams': [
          {
            'teamName': 'Backend',
            'employees': [
              {'id': 1, 'name': 'Rahul', 'position': 'Backend Developer'},
              {'id': 2, 'name': 'Sneha', 'position': 'API Specialist'},
            ]
          },
          {
            'teamName': 'Frontend',
            'employees': [
              {'id': 3, 'name': 'Aman', 'position': 'UI Developer'},
              {'id': 4, 'name': 'Simran', 'position': 'UX Designer'},
            ]
          },
        ]
      },
      {
        'name': 'Marketing',
        'teams': [
          {
            'teamName': 'Digital',
            'employees': [
              {'id': 5, 'name': 'Karan', 'position': 'SEO Analyst'},
              {'id': 6, 'name': 'Priya', 'position': 'Content Writer'},
            ]
          },
        ]
      },
    ],
  };

  // 🔍 Accessing Data Using Nested For Loops
  List<Map<String, dynamic>> departments = company['departments']!;
  for (int i = 0; i < departments.length; i++) {
    print("Department: ${departments[i]['name']}");

    List<Map<String, dynamic>> teams = List<Map<String, dynamic>>.from(departments[i]['teams']);
    for (int j = 0; j < teams.length; j++) {
      print("  Team: ${teams[j]['teamName']}");

      List<Map<String, dynamic>> employees = List<Map<String, dynamic>>.from(teams[j]['employees']);
      for (int k = 0; k < employees.length; k++) {
        print("    Employee ID: ${employees[k]['id']}, Name: ${employees[k]['name']}, Position: ${employees[k]['position']}");
      }
    }
  }
}
