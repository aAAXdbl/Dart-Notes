class CalculatorConfig {
  //Eager Singleton
  static final CalculatorConfig instance = CalculatorConfig._("GhoST");
  final String apiKey;
  CalculatorConfig._(this.apiKey);


}

//Lazy Singleton
class CalculatorLazySingleton {
  static CalculatorLazySingleton? _instace;
  static CalculatorLazySingleton get instance {
    if(_instace == null) _instace = CalculatorLazySingleton._init();
    return _instace!;
  }

  CalculatorLazySingleton._init();
 }