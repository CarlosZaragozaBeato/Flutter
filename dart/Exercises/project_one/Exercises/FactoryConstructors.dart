class Car {
  String make = "";
  String bodyType = "";
  Car({this.make = '', this.bodyType = 'Truck'});

  factory Car.suv() {
    return Car(bodyType: 'Suv');
  }
}

void main() {
  var CarSuv = Car.suv();
  print(CarSuv.bodyType);
}
