//*Class:********************************
class Car {
  String make = "";
  String bodyType = "";
//*Constructor:********************************
  //long-form
  /*Car(String make, String bodyTipe) {
    this.make = make;
    this.bodyTipe = bodyTipe;
  }*/

  //short Form:********************************
  Car(this.make, this.bodyType);

  //*Named Constructor
  Car.trucks() {
    make = '';
    bodyType = 'Truck';
  }

  Car.suv() : this('Toyota', 'Suv');

  @override
  String toString() {
    return 'Car(make:$make, bodyType:$bodyType)';
  }

  String toJson() {
    return '{"Car(make:$make, bodyType:$bodyType)"}';
  }
}

//*Object:********************************

void main() {
  var car = Car("Ford", "Suv");

  print(car);
  //Adding Json seriallitzation
  print(car.toJson());
//cascade Notation
  car.make = "Mazda";
  car.bodyType = "Sedan";
  print(car);

  var car2 = Car("", "")
    ..make = 'Nissan'
    ..bodyType = 'SUV';
  print(car2);

  var myTruck = Car.trucks();
  myTruck.make = "Scania";
  print(myTruck);

  var mySuv = Car.suv();
  print(mySuv);
}
