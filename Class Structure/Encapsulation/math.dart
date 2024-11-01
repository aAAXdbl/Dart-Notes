class Math {

  late int _number1;
  //Getter Setter
  int get number1 => _number1;
  set number1(int number1) {
    _number1 = number1;
  } //Erişilemeyen Ögelere Erişim amaçlı kullanılır.

  late int _number2;
  //Getter Setter
  int get number2 => _number2;
  set number2(int number2) {
    _number2 = number2;
  }//Erişilemeyen Ögelere Erişim amaçlı kullanılır.

  void sum() {
    int result = number1 + number2;
    print("Sum = $result");
  }
  void extraction() {
    int result = number1 - number2;
    print("Extraction = $result");
  }
  void multiply() {
    int result = number1 * number2;
    print("Multiply = $result");
  }
  void divide() {
    double result = number1 / number2;
    print("Divide = $result");
  }
}