//Create a Person class with firstName and lastName properties, and a method called fullName() that returns the full name of the person. Then create a Student class that inherits from Person and has a major property. Override the fullName() method in the Student class to include the major in the full name.

class Person {
  String firstName;
  String lastName;


  Person(this.firstName,this.lastName);
  void fName() {
    print("Fullname is $firstName $lastName.");
  }
}

class Student extends Person {
  String major;

  Student(String firstName, String lastName,this.major) : super(firstName,lastName);

  void fName() {
    print("Fullname of the student is $firstName $lastName, and doing major in $major.");
  }
}

void main() {
  Student s1 = Student("Muhammad","Shaheer","Dart&flutter");
  s1.fName();

}