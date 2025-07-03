class Logger {
  static final Logger _instance = Logger._internal();

  Logger._internal();

  factory Logger() {
    return _instance;
  }

  void log(String mess) {
    print(mess);
  }
}

void main() {
  Logger l1 = Logger();
  Logger l2 = Logger();
  l1.log("hii abhinav ");
  print(l1);
}
