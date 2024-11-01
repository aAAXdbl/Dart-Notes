void main() {
  _User user = new _User("Anıl", "Kurukavak",age:25);

  // ?? --> eğer boşsa varsayılan değer olarak ne atamamız istediğini sorar.
  // if((user.age ?? 0) < 18) {}

  // is yapısı
  if(user.age is int) { //user.age bir sayı mı?
    if(user.age! < 18) {
      print("Yaşınız 18'den küçük.");
      user.moneyType = "TRY";
    } else {
      print("Yaşınız 18 veya 18'den büyük.");
      user.moneyType = 2500;
    }
  }else {
    print("Yaş Bilgisi Bulunamadı.");
  }
  final newType = user.moneyType is String ? user.moneyType as String : user.moneyType as int;
  // as kullanımı belirtilen veri tipi ile cast etmek için kullanılır. (ex: user.moneyType as int);
  print("Money: $newType");
  //print(user.moneyType + 'a');
}

class _User { //Sınıflarda private(_) olarak tanımlanabilir.
  final String name;
  final String surname;
  int? age;

  _User(this.name, this.surname, {this.age});

  //Müşteri para türü kontrolu yapalım. müşteri para türü olarak string'de yazabilir,
  //Sayısal bir değer de yazabilir. o zaman dynamic yapısını kullanalım.

  dynamic moneyType;

  void updateMoneyWithString(String data) {
    moneyType = data;
  
  }
  void updateMoneyWithInteger(int data) {
    moneyType = data;
  }
}