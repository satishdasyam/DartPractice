void main() {
  try {
    print(EmailAddress('me@example.com').email);
    print(EmailAddress('example.com').email);
    print(EmailAddress('').email);
  } on FormatException catch (e) {
    print(e.message);
  }
}

class EmailAddress {
  String email;
  EmailAddress(this.email) {
    if (email.isEmpty) {
      throw FormatException("email is empty");
    } else if (!email.contains("@")) {
      throw FormatException("$email doesn't contains @");
    }
  }
}
