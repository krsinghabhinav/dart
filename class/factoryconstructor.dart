class Shap {
  String shapType;

  factory Shap(String shapType) {
    if (shapType == "circle") {
      return Circle();
    } else if (shapType == "square") {
      return Square();
    } else {
      return Shap._internal("unkanown");
    }
  }

  Shap._internal(this.shapType);
}

class Circle extends Shap {
  Circle() : super._internal("Circle");
}

class Square extends Shap {
  Square() : super._internal("Square");
}

void main() {
  Shap s1 = Shap("circle");
  Shap s2 = Shap("square");
  Shap s3 = Shap("unkown");

  print(s1.shapType); // Circle
  print(s2.shapType); // Square
  print(s3.shapType); // unknown
}
