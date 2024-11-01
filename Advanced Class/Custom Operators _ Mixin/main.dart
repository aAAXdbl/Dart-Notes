void main() {
  //Custom Operators
  Bank user1 = new Bank(500, 5, "Ahmet");
  Bank user2 = new Bank(1000, 5, "Cengiz");
  print(user1 == user2);

  //Mixin
  Bank user3 = new Bank(2500, 20, "Akın");
  user3.sayBankHello();
  user3.MoneyConvertDollar(2500);

  //Cascade Notation
  //kullanıcının bankasına 250 lira ekleyelim,id'sini 1 azaltıp isminin yanına X ekleyelim.
  Bank user4 = new Bank(4750, 39, "Ali");
  user4
    ..money += 250
    ..id += 1
    ..name += "X"; // ".." kullanarak 3 işlem birden yaptık.

  print("Name: ${user4.name} -- ID: ${user4.id} -- Money: ${user4.money}");
}

class Bank with SupportBank {
  //mixin'lerde extends veya implements yerine with kullanılır.
  String name;
  int money;
  int id;

  Bank(this.money, this.id, this.name);

  bool operator ==(Object object) {
    //id'si aynı mı diye kontrol yapan operatör oluşturduk.
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    print("Hello Bank");
  }

  @override
  void MoneyConvertDollar(int money) {
    print(money / 27.04);
  }
}

mixin SupportBank {
  void sayBankHello();

  void MoneyConvertDollar(int money) {
    print(money / 27);
  }
}
