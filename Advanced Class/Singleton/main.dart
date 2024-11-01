import 'eager_and_lazy_singleton.dart';

void main() {
  //Singleton (Static)
  int sayi1 = 24;
  int sayi2 = 5;

  Calculator.sum(sayi1, sayi2);
  
  // Calculator.calculatorName = "ACalculator"; --> kullanılamaz.
  print(Calculator.calculatorName); //Daha güvenli bir static kullandık.

  //Factory Constructor
  Numbers numbers = new Numbers(25, 12);
  //Calculator calc = new Calculator(numbers.num1,numbers.num2); --> Hatalı Kullanım
  Calculator calc2 = Calculator.fromUser(numbers); //Doğru Kullanım
  print(calc2.sayi1); //Test -- OUTPUT --> 25

  //Eager Singleton (._)
  print(CalculatorConfig.instance.apiKey);

  //Lazy Singleton (._)
  print(CalculatorLazySingleton.instance);

  //
}

class Calculator {
  int sayi1;
  int sayi2;

  Calculator(this.sayi1,this.sayi2);

  factory Calculator.fromUser(Numbers numbers) { 
    //Factory Contructor Başka bir Class'ın Constructor'ını kullanmamızı sağlar
    return Calculator(numbers.num1, numbers.num2);
  }

  static void sum(int s1, int s2) {
    //static olarak tanımlandığı için herhangi bir obje tanımlamaksızın doğrudan Class adı ile ulaşılabilir.
    int result = s1 + s2;
    print("Result = $result");
  }

  static void extraction(int s1, int s2) {
    //static olarak tanımlandığı için herhangi bir obje tanımlamaksızın doğrudan Class adı ile ulaşılabilir.
    int result = s1 - s2;
    print("Result = $result");
  }

  static void multiply(int s1, int s2) {
    //static olarak tanımlandığı için herhangi bir obje tanımlamaksızın doğrudan Class adı ile ulaşılabilir.
    int result = s1 * s2;
    print("Result = $result");
  }

  static void divide(int s1, int s2) {
    //static olarak tanımlandığı için herhangi bir obje tanımlamaksızın doğrudan Class adı ile ulaşılabilir.
    double result = s1 / s2;
    print("Result = $result");
  }
  
  //Static Singleton kullanımı her ne kadar da güzel olsa da bazı sıkıntılar yaratabilir.
  //Daha uygun kullanımı aşağıdaki gibidir.
  static const String calculatorName = "XCalculator";

}

class Numbers {
  int num1;
  int num2;

  Numbers(this.num1,this.num2);
}
