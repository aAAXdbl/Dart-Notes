Future<void> main(List<String> args) async {
  //Async Future - Await kullanımı
  
  /* print("Hello");
  2 Saniye Bekle sonra gel
  await Future.delayed(Duration(seconds: 2));
  print('World'); */

  /* //Future.forEach
  Future.forEach([1,2,3,4,5,6,7,8,9,10], (int element) async {
    await Future.delayed(Duration(seconds: 1));
    print("$element. Test Passed!");
  }); */

  print("Hello"); //First
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print("Dart"); //Fourth
  });
  print("Programming"); //Second
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print("Language"); //Third
  });

  //Stream-Yield Kullanımı
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = addMoney(15, 5);
  bankMoneys.listen((event) {
    print(event);
  });



}

Stream<int> addMoney(int retryCount, int money) async* {
  int _localRetry=0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}