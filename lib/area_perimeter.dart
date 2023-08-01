import 'dart:math';

void main() {
  var circle = Circle(4);
  var square = Square(4);
  circle.printValues();
  square.printValues();
}

abstract class Shape {
  double get area;
  double get perimeter;
  void printValues();
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;

  @override
  void printValues() {
    print("Square Perimeter is: $perimeter");
    print("Square Area is: $area");
  }
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;

  @override
  void printValues() {
    print("Circle Perimeter is: $perimeter");
    print("Circle Area is: $area");
  }
}
