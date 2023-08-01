import 'package:dart_hello_world/healthy_foods.dart';

void main() {
  var dosa = Dosa();
  dosa.eat();
}

mixin FermentedFoods {
  void eat() {
    print("eat fermented foods");
  }
}

class Batter {

}

class Dosa extends Batter with FermentedFoods implements HealthyFoods, LongPreparations {
  @override
  void displayContents() {}

  @override
  void prepare() {

  }
}

