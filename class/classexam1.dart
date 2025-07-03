class className {
  String name;
  int age;

  String collegeName = "";

  className(this.name, this.age) {
    print('Constructor called');
  }

  showDetails() {
    print('Name: $name, Age: $age, College:  $collegeName  ');
  }
}

class Employee {
  String name;
  int salary;

  // Named constructor
  Employee.named(this.name, this.salary);

  void show() {
    print("Employee: $name, Salary: ₹$salary");
  }
}

void main() {
  className obj = className('John Doe', 30);
  obj.collegeName = "iise ";
  obj.showDetails();

  var emp = Employee.named("Ravi", 40000);
  emp.show();
}
