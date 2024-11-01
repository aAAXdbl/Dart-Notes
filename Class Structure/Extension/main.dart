void main() {
  String user = "Admin";

  if(user.isAdmin()) {
    print("Admin Login...");
  }else {
    print("User Login...");
  }
}

extension StringUserCheckExtension on String {
  bool isAdmin() {

    return this.toLowerCase() == 'admin'.toLowerCase();
  }
}