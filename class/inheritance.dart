class Persion {
  String name = "";

  Persion(this.name);

  void showPersionDetails() {
    print('Name: $name');
    print("constructor Persion");
  }
}

class Student extends Persion {
  int rollNo = 0;

  Student(String name, this.rollNo) : super(name);

  void showData() {
    print('Roll No: $rollNo');
    print("constructor student");
  }
}

void main() {
  Student student = Student('John', 1);
  student.showPersionDetails();
  student.showData();
}
