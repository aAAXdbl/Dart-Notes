void main(List<String> args) {
  String username = "";

  if(username.length >= 1) {
    print("GhoST");
  }else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    // TODO: implement toString
    return "Username Null Girilmiş! 2.Satırda.";
  }
}
