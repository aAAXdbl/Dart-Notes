void main() {
  List<int> numbers = [12,4, 9, 57, 39];
  print(numbers[0]);
  print(numbers[1]);
  print(numbers[2]);
  print(numbers[3]);
  print(numbers[4]);

  print(numbers.length);

  print("-----------------------------------------------------------------------------------");

  //Dinamik Liste
  List<dynamic> mixed_list = [1,5,3.14,"HelloWorld",false];
  for(var item in mixed_list) {
    print(item);
  }

  print("-----------------------------------------------------------------------------------");

  //Liste Metotları
  
  //add() Metotu --> Listeye Eleman Ekler. Insert'ten farklı add metotu elemanı sona ekler.
  numbers.add(15);
  print(numbers[5]);

  print("-----------------------------------------------------------------------------------");

  //insert() Metotu --> listede seçilen index'teki konuma belirtilen değeri ekler.
  numbers.insert(2, 40);
  print(numbers[2]);

  print("-----------------------------------------------------------------------------------");

  //sort() Metotu --> Listeyi düzenler alfabetik sıraya göre veya sayısal olarak küçükten büyüğe.
  numbers.sort();
  print(numbers);

  print("-----------------------------------------------------------------------------------");

  //reverse() Metotu --> Listeyi Tersine çevirir.
  numbers.reversed;
  print(numbers);

  print("-----------------------------------------------------------------------------------");

  //Contains() kullanımı --> Belirtilen Eleman Listede var mı diye kontrol eder.
  bool control = numbers.contains(6);
  print(control);

  print("-----------------------------------------------------------------------------------");  

  //clear() Metotu --> Listenin Tüm Elemanlarını Siler.
  numbers.clear();
  print(numbers);

  print("-----------------------------------------------------------------------------------");

  //25 Müşterinin Hesabına 10 TL Ekleyelim.
  List<int> customerMoney = List.generate(25, (index) {
    return index + 10;
  });
  print(customerMoney);

  print("-----------------------------------------------------------------------------------");

  //Döngülerle Birlikte Liste Kullanmak
  //10 elemanlı bir listede sadeçe çift sayıları ve tek sayıları ayrı ekrana yazdıralım.
  List<int> sayilar = [20,13,17,21,34,42,50,51,19,30];

for(int i=0; i<sayilar.length;i++) {
  if(sayilar[i]%2 == 0) {
    print("Çift Sayı: ${sayilar[i]}");
  }
  if(sayilar[i]%2 == 1) {
    print("Tek Sayı: ${sayilar[i]}");
  }
}
  print("-----------------------------------------------------------------------------------");
  print("-----------------------------------------------------------------------------------");
  print("-----------------------------------------------------------------------------------");

  //DÖNGÜLER
  //For Döngüsü
  //1-10 arasındaki sayıları for döngüsü ile ekrana yazdıralım.
  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  print("-----------------------------------------------------------------------------------");

  //While Döngüsü
  //1-10 arasındaki sayıları while döngüsü ile tersten yazdıralım ^_^
  int sayi=10;
  while(sayi>=1) {
    print(sayi);
    --sayi;
  }

  print("-----------------------------------------------------------------------------------");

  //Do-while
  //1-30 arasındaki çift sayıları do-while döngüsü ile yazdıralım.
  int s = 1;
  do {
    if(s % 2 == 0) {
      print(s);
    }
    ++s;
  }while(s<=30);

  print("-----------------------------------------------------------------------------------");

  //Foreach Döngüsü (For Döngüsü Kullanılır.)
  //10 Elemanlı Listeyi Foreach ile yazdıralım.
  List<int> random_numbers = [14,23,56,2,81,1,9,89,53,44];
  for(int i in random_numbers) {
    print(i);
  }

  print("-----------------------------------------------------------------------------------");
  print("-----------------------------------------------------------------------------------");
  print("-----------------------------------------------------------------------------------");

  // MAP KULLANIMI

  //Map ikili veri alır ve süslü parantez kullanılır.

  Map<String,int> sport = {"run":100,"basketball":200,"swim":300};
  print(sport); //Tüm değerleri yazdırır.
  print(sport.keys); //Sadece anahtar verileri yazdırır.
  print(sport.values); //Sadece değerleri yazdırır.
  print(sport.length); //Map'in eleman sayısını yazdırır.
  print(sport["run"]); //anahtar kelimeyi çağırırsak değerini yazdırırız.
  print("-----------------------------------------------------------------------------------");

  
  //Döngü ile Map'i tamamen yazdıralım.
  for (var i in sport.entries) {
    print(i);
  }
  print("-----------------------------------------------------------------------------------");
  //Döngü ile keys yazdıralım.
  for (var i in sport.keys) {
    print(i);
  }
  print("-----------------------------------------------------------------------------------");
  //Döngü ile values yazdıralım.
  for (var i in sport.values) {
    print(i);
  }
  //Alternatives
  for (var i = 0; i < sport.length; i++) {
    print("${sport.keys.elementAt(i)} - ${sport.values.elementAt(i)}");
  }
  print("-----------------------------------------------------------------------------------");


  //150 TL üzerinde parası olan müşterilere kredi verelim ^_^ 
  Map<String,List<int>> BankAccountControl = {"Ahmet":[100,300,200],"Mehmet":[30,50],"Veli":[30]};

  for (var item in BankAccountControl.keys) {
    //Musterilere Bakan Döngü

    for (var i in BankAccountControl[item]!) {
      //Musterilerin Hesabındaki değerlere bakan döngü

      if(i>150) {
        print("Kredi Talebiniz Başarıyla Gerçekleşti!");
        break;
      }
    }
  }

  //Müşterilen Hesabındaki Toplam Paraları Bulalım.
  
  for (var item in BankAccountControl.keys) {
      int musteriHesabiToplamPara = 0;
    for (var i in BankAccountControl[item]!) {
      musteriHesabiToplamPara += i;
    }
    print("$item adlı kişinin hesabındaki toplam para = $musteriHesabiToplamPara");
  } 

}