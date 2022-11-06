class Car {
  String? _make;
  int? _productionYear;

  Car(this._make, this._productionYear);

  void printSomething() {
    print('$_make\n$_productionYear');
  }
}

class Truck extends Car {
  Truck(String make, int productionYear) : super(make, productionYear);
}

class Sedan extends Car {
  Sedan(String make, int productionYear) : super(make, productionYear);

  double truckSize = 0;
}

class Suv extends Car {
  Suv(String make, int productionYear) : super(make, productionYear);

  double truckSize = 0;
}
