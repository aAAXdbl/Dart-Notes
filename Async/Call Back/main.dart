void main(List<String> args) {
  final user = new User(money: 25);

  user.AddMoney((int result) {
    print(user.money);
    return result + 5;
  });
}

//CallBack Kolay Kullanımı
typedef AddMoneyCallBack = int Function(int data);

class User {
  int money;
  User({required this.money});

  void AddMoney(AddMoneyCallBack onComplete) {
    money += 5;
    final passData = onComplete(money);
    print(passData);
  }
}