void main() {
  Map<String, String> student = {
    'name': 'Abhinav',
    'roll': '23A',
    'branch': 'CSE',
  };
  print(student["name"]);
  Map<String, dynamic> mixed = ({});
  mixed["username"] = "abhinav";
  print(mixed);
}
