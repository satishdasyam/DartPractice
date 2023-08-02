void main() {
  Set result = mergeSets();
  print("Result:$result");
  num sum = calculateSetElementSum(result);
  print("Sum:$sum");
}

Set mergeSets() {
  const a = {1, 3};
  const b = {3, 5};
  return {...a, ...b};
}

num calculateSetElementSum(Set result) {
  num sum = 0;
  for (int i = 0; i < result.length; i++) {
    sum += result.elementAt(i);
  }
  return sum;
}
