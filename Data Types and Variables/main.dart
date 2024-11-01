void main() {
  //First Code
  print("Hello World");

  //Değişken Tanımlama ( Veri Tipi Değişken Adı = Değer; )
  String username = "GhoST";
  print(username);

  print("-----------------------------------------------------------------------------------");

  //Data Types
  /*
    String
    Boolean
    Integer
    Double 
  */

  //String
  print("Hello Dart"); //String Metinsel Veri Tipidir. değerler tırnak içerisinde yazılır.
  String user = "Administrator";
  String password = "145367";
  print("Username: " + user + " Password: " + password);

  print("-----------------------------------------------------------------------------------");

  //Boolean
  print(true); // Boolean Mantıksal Veri Tipidir. Sadece True ve False Değerleri Alır.
  bool answer = false;
  print("Answer : $answer");

  print("-----------------------------------------------------------------------------------");

  //Integer
  print(2); // int Sayısal veri tipidir.
  int x = 5,y = 8;
  print(x + y);

  print("-----------------------------------------------------------------------------------");

  //Double
  print(15.84); // double Ondalıklı Sayısal Veri Tipidir.
  double pi = 3.14;
  print(pi);

  print("-----------------------------------------------------------------------------------");

  //Var Kullanımı: Dynamic'dir. Diğer diller arası karışıklığı önlemek için kullanılır.

  var name = "Anıl";
  var age = 17;
  print("Name: "+name);
  print("Age: $age");

  print("-----------------------------------------------------------------------------------");

  //Final Kullanımı: Final değeri sonradan değiştirilemeyen yapıdır.
  int sayi1 = 10;
  final sayi2 = 20;
  sayi1 = 14;
  //sayi2 = 20; --> sonradan değeri değiştirilemez.
  print(sayi1 + sayi2);
  

  //Const Kullanımı: Const değeri sonradan değiştirilemeyen yapıdır.
  String ad = "Ahmet";
  String soyad = "Cengiz";
  const String dogum_yeri = "İstanbul";

  ad = "İbrahim";
  soyad = "Taşçı";
  //dogum_yeri = "Ankara"; -->  sondaran değeri değiştirilemez.

  print("Adı: "+ad+ " Soyadı: "+soyad+ " Doğum Yeri: "+dogum_yeri);  
}
