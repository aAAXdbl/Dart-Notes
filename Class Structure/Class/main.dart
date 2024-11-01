// ignore_for_file: unused_local_variable

void main() {
  //Sınıf Yapısı ve Özellikleri

  //Class kullanmadan bir bankaya musteri kayıt işlemi yapalım.
  
  String musteriAdi = "Ahmet";
  String musteriSoyadi = "Cengiz";
  String musteriDogumYeri = "Kars";
  int musteriYasi = 23;

  if(musteriYasi>18) {
    print("$musteriAdi $musteriSoyadi adlı kişinin banka kayıt işlemi başarıyla gerçekleşti!");
  }else {
    print("$musteriAdi $musteriSoyadi adlı kişinin banka kayıt işlemi başarısız!");
  }

  String musteriAdi2 = "Unknown";
  String musteriSoyadi2 = "Unknown";
  String musteriDogumYeri2 = "Unknown";
  int musteriYasi2 = 17;

  if(musteriYasi2>1) {
    print("$musteriAdi2 $musteriSoyadi2 adlı kişinin banka kayıt işlemi başarıyla gerçekleşti!");
  }else {
    print("$musteriAdi2 $musteriSoyadi2 adlı kişinin banka kayıt işlemi başarısız!");
  }

  //Bu şekilde 10,20 müşterinin olduğunu düşünürsek gerçekten de oldukça uzun iş :D

  print("-----------------------------------------------------------------------------------");
  print("-----------------------------------------------------------------------------------");
  print("-----------------------------------------------------------------------------------");

  //Şimdi Bir de Class Yapısı ile deneyelim.

  Customer customer1 = new Customer("Akın", "Kurukavak",customerAge: 21);
  customer1.customerControl();
  customer1.offerControl();

  Customer customer2 = new Customer("Ali","Kurukavak", customerAge:25);
  customer2.customerControl();
  customer2.offerControl();
  
  Customer customer3 = new Customer("Anıl","Kurukavak", customerBirthPlace: "İstanbul",customerAge: 17);
  customer3.customerControl();
  customer3.offerControl();

}

//CLASS

class Customer {
  late final String customerName;
  late final String customerSurname;
  late final String? customerBirthPlace;
  late final int customerAge;

  //Constructor
  /* Customer(String name,String surname,{String? birthPlace, required int age}) { 
    this.customerName =name;
    this.customerSurname=surname;
    this.customerBirthPlace=birthPlace;
    this.customerAge=age;
  } */ //Kullanılabilir fakat daha basit yöntemi var

  //Simple Constructor
  Customer(this.customerName,this.customerSurname,{this.customerBirthPlace, required this.customerAge}){}
  //Method
  void customerControl() {
    if(customerAge>17) {
      print("${this.customerName} ${this.customerSurname}'in Banka Kayıdı Başarıyla Gerçekleşti!");
    }else {
      print("${this.customerName} ${this.customerSurname}'in Banka Kayıdı Başarısız Oldu.");
    }
  }

  //Örneğin Müşteri İstanbul Doğumlu ise kampanya yapalım ^_^
  void offerControl() {
    if(customerBirthPlace==null) {
      print("$customerName $customerSurname'nin doğum yeri bilgisi bulunmamaktadır.");
    }else if(customerBirthPlace=="İstanbul") {
      print("$customerName $customerSurname'nin doğum yeri İstanbul olduğu için kampanyamızdan faydalanabilir.");
    }else {
      print("Sadece Doğum Yeri İstanbul olan müşterilerimiz kampanyadan faydalanabilir.");
    }
  }
}
//Class Yapısı Kabaca Bu Şekilde şimdi diğer özelliklerine geçelim ^_^