void main() {
  var person1 = Person(30, "Satish", 5.6);
  var person2 = Person(5, "Rutvij", 4.0);
  person1.printDetails();
  person2.printDetails();
}

class Person {
  int age;
  String name;
  double height;

  Person(this.age, this.name, this.height);

  void printDetails() {
    print("My name is $name. I'm $age years old, I'm $height meters tall.");
  }
}
