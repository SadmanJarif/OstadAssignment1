class Car {
  // Properties
  String _brand;
  String _model;
  int _year;
  double _milesDriven;

  // Static property to track the number of Car objects created
  static int numberOfCars = 0;

  // Constructor
  Car(this._brand, this._model, this._year, this._milesDriven) {
    // Increment the static property whenever a new Car object is created
    numberOfCars++;
  }

  // Methods
  void drive(double miles) {
    _milesDriven += miles;
  }

  double get milesDriven => _milesDriven;

  String get brand => _brand;

  String get model => _model;

  int get year => _year;

  int get age {
    int currentYear = DateTime.now().year;
    return currentYear - _year;
  }
}

void main() {
  // Create three Car objects with different brands, models, and years
  Car car1 = Car("Toyota", "Camry", 2015, 50000);
  Car car2 = Car("Honda", "Civic", 2018, 30000);
  Car car3 = Car("Ford", "Mustang", 2020, 10000);

  // Drive each car a different number of miles
  car1.drive(150);
  car2.drive(200);
  car3.drive(300);

  // Print details for each car
  List<Car> cars = [car1, car2, car3];
  for (Car car in cars) {
    print("Brand: ${car.brand}");
    print("Model: ${car.model}");
    print("Year: ${car.year}");
    print("Miles Driven: ${car.milesDriven}");
    print("Age: ${car.age}");
    print("");
  }

  // Print the total number of Car objects created
  print("Total number of cars created: ${Car.numberOfCars}");
}
