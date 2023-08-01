import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  print("start");
  callToAsyncMethod();
  print("end");
}

void callToAsyncMethod() async {
  var response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  List<dynamic> userList = jsonDecode(response.body);

  for (int i = 0; i < userList.length; i++) {
    var element = userList[i];
    print(element['name']);
  }
  // userList.forEach((element) {
  //   print(element['name']);
  // });
}
