// ignore_for_file: unused_local_variable

void main(List<String> args) {
  final user = User(data: 17);
  final admin = AdminUser();

  //removeAllUser(user); --> Hata verir çünkü sadece admin silebilir.
  removeAllUser(admin); 
  
}

void removeAllUser<T extends IAdmin>(T data) {
  data.removeUser();   
}

class User<T> {
  T data;
  User({
    required this.data
  });
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
    // TODO: implement removeUser
  }
}
