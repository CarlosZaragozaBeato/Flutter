import 'Car.dart';

void main() {
  var car = Car('Ford', 1999);
  car.printSomething();
  print("");
  var truck = Truck('Scania', 1555);
  truck.printSomething();
  print("");
  var sedan = Sedan('Toyota', 4555);
  sedan.printSomething();
  print("");
  var suv = Suv('nissan', 2005);
  suv.printSomething();
  print("");
  print(suv is Truck);
  print(suv is! Truck);
}
