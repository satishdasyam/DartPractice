void main() {
  print("start");
  countDown(5);
}

Future countDown(int n) async {
  for (int i = 0; i <= n; i++) {
    await Future.delayed(const Duration(seconds: 1), () {
      print('number:$i');
      if (i == n) {
        print("Done");
      }
    });
  }
}
