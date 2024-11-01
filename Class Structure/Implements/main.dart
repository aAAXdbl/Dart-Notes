void main() {

  //IMPLEMENTS

  Student student = new Student("Ahmet", "Baki", 1071);
  student.SelectedCourses();
  Student2 student2 = new Student2("Anıl", "Kurukavak", 322);
  student2.SelectedCourses();
}

abstract class IStudent {
  final String name;
  final String surname;
  final int studentNumber;

  IStudent(this.name, this.surname, this.studentNumber);

  void SelectedCourses() {
    print("Courses");
  }
}

class Student implements IStudent {
  //Implement Etmek Doğrudan aktarıp değiştirmek amacıyla kullanılır.
  /* @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  // TODO: implement studentNumber
  String get studentNumber => throw UnimplementedError();

  @override
  // TODO: implement surname
  String get surname => throw UnimplementedError(); */

  final String name;
  final String surname;
  final int studentNumber;

  Student(this.name, this.surname, this.studentNumber);

  @override
  void SelectedCourses() {
    //Implement Ettiğimiz Metotu Class'a Uygun Şekilde Değiştiriyoruz.
    print("Name: $name, Surname: $surname, Student Number: $studentNumber");
    print("$name's Selected Courses: Math,Physical,Chemical,Biology,Geography");
  }
}

class Student2 implements IStudent {
  //Implement Etmek Doğrudan aktarıp değiştirmek amacıyla kullanılır.
  /* @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  // TODO: implement studentNumber
  String get studentNumber => throw UnimplementedError();

  @override
  // TODO: implement surname
  String get surname => throw UnimplementedError(); */

  final String name;
  final String surname;
  final int studentNumber;
  Student2(this.name, this.surname, this.studentNumber);

  @override
  void SelectedCourses() {
    //Implement Ettiğimiz Metotu Class'a Uygun Şekilde Değiştiriyoruz.
    // TODO: implement SelectedCourses
    print("Name: $name, Surname: $surname, Student Number: $studentNumber");
    print("$name's Selected Courses: Operating Systems,Web Programming,Social Media");
  }
}
