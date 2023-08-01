void main() {
  const order = ['margherita', 'pepperoni', 'pineapple'];
  calculateOrderPrice(order);
}

const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

void calculateOrderPrice(List order) {
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    } else {
      print("$item is not in the menu");
    }
  }
  print('Total: \$$total');
}
