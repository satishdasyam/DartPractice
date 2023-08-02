void main() {
  double farenheit = 86;
  print("${farenheit}F = ${farenheitToCelius(farenheit)}C");
}

String farenheitToCelius(double faranheit) {
  double celsius = (faranheit - 32) / 1.8;
  return celsius.toStringAsFixed(1);
}
