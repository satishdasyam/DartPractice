void main() {
  print(5.rangeTo(10));
}

extension IntRangeExtension on int {
  List rangeTo(int n) {
    if (n < this) {
      return List.empty();
    } else {
      var list = List<int>.filled((n - this) + 1, 0);
      int start = this;
      for (int index = 0; index < list.length; index++) {
        list[index] = start;
        start++;
      }
      return list;
    }
  }
}
