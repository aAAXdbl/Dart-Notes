void main() {
  //Polymorphism (Çok Biçimlilik)

  IUser user = new Turk(); //user Turk Sınıfını kullanıyor.
  user.saySomething();
  user = English(); //user English Sınıfını kullanıyor.
  user.saySomething();



}
abstract class IUser {
  final String name;

  IUser(this.name);
  void saySomething();
}

class Turk implements IUser {
  @override
  // TODO: implement name
  String get name => "Akın";

  @override
  void saySomething() {
    // TODO: implement sayMyName
    print("Oooo Kral! Hoşgeldin $name");
    print("Karnın Aç mı?");
  }
}
class English implements IUser {
  @override
  // TODO: implement name
  String get name => "John";

  @override
  void saySomething() {
    // TODO: implement sayMyName
    print("Welcome $name");
    print("let's have a drink!");
  }
}