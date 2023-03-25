//Create a Vehicle class with brand, model, and year properties, and a method called drive() that prints a message indicating that the vehicle is being driven. Then create a Car class that inherits from Vehicle and has a numDoors property. Override the drive() method in the Car class to print a message that includes the number of doors.
class Vehicle {
  String brand = "";
  String model = "";
  int year = 0;
  Vehicle(this.brand, this.model, this.year);
  void drive() {
    print("Indicating that the vehicle is being driven");
  }
}

class Car extends Vehicle {
  int numDoors = 0;
  Car(String brand, String model, int year, this.numDoors) : super(brand, model, year);
  void drive() {
    print("The $year $brand $model with $numDoors doors.");
  }
}
void main() {

  Car c1 = Car("Corola", "Gli 2.0", 2016, 4);
  c1.drive();
}