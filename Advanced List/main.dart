void main() {
  List<Cars> cars = [
    new Cars(
        carName: carModels.Audi,
        carModel: "Audi RS6",
        carMoney: 250000,
        isSecondHand: false),
    new Cars(
      carName: carModels.BMW,
      carModel: "BMW i8",
      carMoney: 500000,
    ),
    new Cars(
        carName: carModels.Reno,
        carModel: "Reno Megan",
        carMoney: 200000,
        isSecondHand: false),
    new Cars(
        carName: carModels.Volkswagen,
        carModel: "Volkswagen Golf",
        carMoney: 150000),
    new Cars(
        carName: carModels.Ford,
        carModel: "Ford GT",
        carMoney: 750000,
        isSecondHand: false),
  ];

  //any,where
  final resultCount =
      cars.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  //contains
  final newCar = new Cars(
      carName: carModels.Audi,
      carModel: "Audi RS6",
      carMoney: 250000,
      isSecondHand: false);

  final isHaveCar = cars.contains(newCar);

  if (isHaveCar) {
    print("Bu araba zaten mevcut");
  } else {
    print("Bu araba bizde yok, alınabilir.");
  } //Output'a göre bu araç bizde yok diyor bunun sebebi equal yapmamış olmamız.

  //join
  //Sadece BMW ve parası 250000'den yüksek olan arabanın modelini ekrana yazdır.
  final bmw_money_control = cars.where((element) {
    return element.carName == carModels.BMW && element.carMoney > 250000;
  }).join(); //toString() kullanıyor. o zaman sınıfımızda toString'i override edelim.
  print(bmw_money_control);

  //map
  //Arabaların sadece modellerini öğrenmek istenirse...
  final carNames = cars.map((e) => e.carModel).join(" -- ");
  print(carNames);

  //try-catch
  try {
    //singleWhere
    //1 tane olsun yeter. müşteri Mercedes istiyor.
    final mercedesCar = cars.singleWhere((element) => element.carName == carModels.Mercedes);
    print(mercedesCar); //mercedes olmadığı için crash atıyor.
  } catch (e) {
    print("Maalesef istediğiiniz araba mevcut değil.");
  } finally { //Opsiyonel
    print("Debugged.");
  }

  //indexOf
  //Ford Listede kaçıncı sırada? Bir bakalım...
  final index = cars.indexOf(newCar);
  print(index);
 
  //add
  //Mercedes'i listemize Ekleyelim.
  final mercedes =new Cars(carName: carModels.Mercedes, carModel: "Mercedes G-Class", carMoney: 5000000);
  cars.add(mercedes);

  //sort
  //cars.sort((first,second)=> first.carMoney.compareTo(second.carMoney)); --> küçükten büyüğe
  cars.sort((first,second)=> second.carMoney.compareTo(first.carMoney)); // --> büyükten küçüğe
  print(cars);

  //remove - removeAt - removeWhere
  //cars.removeAt(0); --> girilen index'teki elemanı siler.
  //cars.remove(mercedes); --> Belirtilen Elemanı Siler.
  //removeWhere ise şartlara göre belirtilen elemanı siler.
  cars.removeWhere((element) => element.carName == carModels.BMW || element.carMoney < 250000);
  print(cars);

}

class Cars {
  final carModels carName;
  final String carModel;
  final int carMoney;
  final String? carCity;
  final bool isSecondHand;
  Cars(
      {required this.carName,
      required this.carModel,
      required this.carMoney,
      this.carCity,
      this.isSecondHand = true
      });

  //Hadi ögelerin equallarını yapalım.

  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cars &&
        other.carModel == carModel &&
        other.carName == carName &&
        other.carMoney == carMoney &&
        other.carCity == carCity &&
        other.isSecondHand == isSecondHand;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$carModel -- $carMoney";
  }
}

enum carModels {
  Audi,
  BMW,
  Reno,
  Volkswagen,
  Ford,
  Mercedes,
}
