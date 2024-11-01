void main() {

  //ABSTRACT CLASS 

  NormalUser normalUser1 = new NormalUser("Anıl", 1500);
  normalUser1.sayMoneyWithCompanyName();
  BankUser bankUser1 = new BankUser("Akın", 10500, 1453);
  bankUser1.sayMoneyWithCompanyName();
  bankUser1.BankUserLogin();
  SpecialUser specialUser1 = new SpecialUser("Ali", 12000, 1071, 50);
  specialUser1.sayMoneyWithCompanyName();
  print(specialUser1.calculator); 
}

//Abstract Class
abstract class IUser { 
  final String name;
  final int money;

  IUser(this.name,this.money);
  void sayMoneyWithCompanyName() {
    print("$name - $money paranız vardır.");
  }
}

//Normal Class
class NormalUser extends IUser{ //IUser Sınıfını NormalUser Sınıfına dahil ettim.
  NormalUser(String name, int  money) : super(name,money); //IUser ve Normal Classtaki Constructor'ları entegre ettim.

  /* void sayMoneyWithCompanyName() {
    print("$name - $money paranız vardır.");
  } */
}

class BankUser extends IUser {
  final int bankCode;

  BankUser(String name, int money, this.bankCode) : super(name,money);

  /* void sayMoneyWithCompanyName() {
    print("$name - $money paranız vardır.");
  } */
  
  void BankUserLogin() {
    print("Giriş Kodunuz: $bankCode");
  }
}

class SpecialUser extends IUser {
  final int bankCode;
  final int disccount;

  SpecialUser(String name, int money, this.bankCode, this.disccount) : super(name,money);

  /* void sayMoneyWithCompanyName() {
    print("$name - $money paranız vardır.");
  } */

  int get calculator => money - (money ~/disccount);
}
