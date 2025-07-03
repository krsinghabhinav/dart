class Strundet {
  String _name = "";
  int _age = 0;
  String _address = "";
  int _phone = 0;

  String get name => _name;
  set setname(String name) {
    _name = name;
  }

  int get age => _age;
  set age(int age) {
    if (age < 0) {
      print("Age cannot be negative");
    } else {
      _age = age;
    }
  }

  String get address => _address;

  set addressName(String address) {
    _address = address;
  }

  int get phoneNumber => _phone;

  set phonenumb(int phoneNo) {
    if (phoneNo < 10) {
      print("Phone number cannot be more than 10");
    } else {
      _phone = phoneNo;
    }
  }
}


class Circle {
  double _radius;

  Circle(this._radius);

  // Getter
  double get area => 3.14 * _radius * _radius;

  // Setter
  set radius(double r) {
    if (r > 0) {
      _radius = r;
    }
  }
}

void main() {
  Strundet s = new Strundet();

  // setter
  s.setname = " John";
  s.age = 25;
  s.addressName = " iise college";
  s.phonenumb = 1234567890;

//getter
  print("Name === ${s.name}");
  print("Age === ${s.age}");
  print("Address === ${s.address}");
  print("Phone Number === ${s.phoneNumber}");




   Circle c = Circle(2.0);
  print("Area: ${c.area}");

  c.radius = 3.0;
  print("Updated Area: ${c.area}");
}
