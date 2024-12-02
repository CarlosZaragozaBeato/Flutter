abstract class DataRepository {
  double? fetchTemeperature(String city);
  factory DataRepository() => FakeServer();
}

class FakeServer implements DataRepository {
  @override
  double? fetchTemeperature(String city) {
    return 21.5;
  }
}

class AnotherClass {
  int myField = 42;
  void myMethod() => print(myField);
}

class SomeClass extends AnotherClass {}

class SomeClass2 implements AnotherClass {
  @override
  int myField = 40;

  @override
  void myMethod() => print(myField);
}

void main() {
  var city = 'Madrid';
  final repository = FakeServer();
  final temperature = repository.fetchTemeperature(city);
  print('$city  $temperature');
}
