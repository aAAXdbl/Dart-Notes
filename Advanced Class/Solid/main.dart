void main() {
//Solid
//Single Responsibility Principle (Tek Sorumluluk Prensibi)
//Open closed principle (Açık kapalı prensibi)

//Liskov substitution Principle (Liskov Yer Değiştirme İlkesi)
IDatabase database = new SQL();
database.checkData();
//Ooops.. Yanlış database kullandım hemen değiştireyim :)
database = new MySQL();
database.checkData();

//Interface Segregation Principle (Arayüz Ayırma Prensibi)
//Dependency Inversion Principle (Bağımlılığı Ters Çevirme Prensibi)
}

//Solid Single Responsibility Principle (Tek Sorumluluk Prensibi)
class UserManager {
  String name;

  UserManager({required this.name});

  void changeUsername(String name) {
    this.name = name;
  }

  //void changeLocalization() {} --> bu senin görevin değil...
  //hepsini tek sınıfta yapmaya çalışma, ortak çalış...
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUsername("GhoST");
    changeLocalization();
  }

  void changeLocalization() {
    print("Changing Localization...");
  }
}

//Open closed principle (Açık kapalı prensibi) --> Ana Sistemi Etkilemeden Alt Dallarda İlerleme mantığıdırç
class Student {
  final String name;
  final String surname;

  Student(this.name, this.surname);
}

class StudentProperties extends Student {
  StudentProperties(super.name, super.surname);
  final int studentNo =322; //StudentProperties'e ek olarak ana sistemi etkilemeden studentNo ekledim.
}

//Liskov substitution Principle (Liskov Yer Değiştirme İlkesi)

abstract class IDatabase {
  void checkData();
}

class SQL extends IDatabase {
  @override
  void checkData() {
    // TODO: implement checkData
    print("SQL Veri Tabanı ile Veriler Kontrol Ediliyor...");
  }
}

class MySQL extends IDatabase {
  @override
  void checkData() {
    // TODO: implement checkData
    print("MySQL Veri Tabanı ile Veriler Kontrol Ediliyor...");
  }
}

class SQLite extends IDatabase {
  @override
  void checkData() {
    // TODO: implement checkData
    print("SQLite Veri Tabanı ile Veriler Kontrol Ediliyor...");
  }
}

//Interface Segregation Principle (Arayüz Ayırma Prensibi)

abstract class IUserOperation implements IUserLocation,IUserLanguage {
  void write();
  void read();
  void delete();
}
abstract class IUserLocation { //IUserOperation'ı parçaladık. bu sayede sadece gerekli olan metotlar çağırılabilir.
  void locationChange();
}
abstract class IUserLanguage { //IUserOperation'ı parçaladık. bu sayede sadece gerekli olan metotlar çağırılabilir.
  void language();
}

//Örn: UserLocation diye bir sınıf oluşturmak istesem sadece location'a ihtiyacım olduğu için IUserLocation kullanırım.
class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
    print("Changing Location...");
  }
}

//Dependency Inversion Principle (Bağımlılığı Ters Çevirme Prensibi)
abstract class ICameraManager {
  void ReadQR();
}

class DeviceCameraManager extends ICameraManager{
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  
  @override
  void ReadQR() {
    // TODO: implement ReadQR
    iphoneCameraRead.iPhone = "ReadQR Ready";
  }

}

class IphoneCameraRead extends ICameraManager {
  String iPhone;

  IphoneCameraRead(this.iPhone);

  @override
  void ReadQR() {
    // TODO: implement ReadQR
  }

}

