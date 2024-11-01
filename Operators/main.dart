void main() {
  //Operatörler

  //Aritmetik Operatörler
  // +, -, *, /, %, ++, --

  int a = 14;
  int b = 7;
  print(a+b); //Toplama
  print(a-b); //Çıkarma
  print(a*b); //Çarpma
  print(a/b); //Bölme
  print(a%b); //Mod alma (Bölümünden kalanı verir)
  print(++a); // 1 arttırır.
  print(--a); // 1 eksiltir.

  print("-----------------------------------------------------------------------------------");

  // Atama Operatörleri
  // =, +=, -=, *=, /=, %=
  int s = 2; // 2'yi s'ye atar.
  s += 4; //s'ye 4 ekler ve yine s'ye atar.
  s -= 5; //s'den 5 çıkarır ve yine s'ye atar.
  s *= 10; //s ile 10'u çarpar ve yine s'ye atar.
  s %= 2; //s ile 2'nin bölümünden kalanı verir ve yine s'ye atar.
  print(s);

  print("-----------------------------------------------------------------------------------");
  
  //Karşılaştırma Operatörleri
  // ==, <, >, <=, >=, !=

  int x = 25;
  int y = 16;

  if(x>y) {
    print("x, y'den büyüktür.");
  }
  if(x<y) {
    print("x, y'den küçüktür.");
  }
  if(x>=y) {
    print("x, y'den büyüktür veya eşittir.");
  }
  if(x<=y) {
    print("x, y'den küçüktür veya eşittir.");
  }
  if(x==y) {
    print("x, y'ye eşittir.");
  }
  if(x!=y) {
    print("x, y'ye eşit değildir.");
  }

  print("-----------------------------------------------------------------------------------");

  //Mantıksal Operatörler
  // &&, ||, !expr

  int sayi1 = 23;
  int sayi2 = 42;
  
  print(sayi1>sayi2 && sayi1> 30); // &&: Bu Operatör Şartlardan Hepsi true ise sonuç true olur.
  print(sayi2<sayi1 || sayi2 < 50); // ||: Bu Operatör Şartlardan Sadece 1 tanesi true ise sonuç true olur.
  print(!(sayi2>sayi1)); // !: Bu Operatör var olan sonucu tersine çevirir. true ise false, false ise true.
}